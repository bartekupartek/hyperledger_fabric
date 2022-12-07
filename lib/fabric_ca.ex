defmodule Google.Protobuf.Timestamp do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:seconds, 1, type: :int64)
  field(:nanos, 2, type: :int32)
end

defmodule HyperledgerFabric.ECDSASigValueRecord do
  require Record

  Record.defrecord(
    :ecdsa_sig_value,
    :ECDSASigValue,
    Record.extract(:"ECDSA-Sig-Value", from_lib: "public_key/include/public_key.hrl")
  )
end

defmodule Signature do
  @moduledoc false

  def prevent_malleability(signature) do
    import Bitwise
    import HyperledgerFabric.ECDSASigValueRecord

    ecdh_params = :crypto.ec_curve(:secp384r1)

    {{:prime_field, _prime}, {_curve_a, _curve_b, _seed}, _base_point, order, _co_factor} =
      ecdh_params

    n_int = :crypto.bytes_to_integer(order)
    half_order = n_int >>> 1

    {_, r, s} = :public_key.der_decode(:"ECDSA-Sig-Value", signature)
    new_s = if s > half_order, do: n_int - s, else: s
    sig_val = ecdsa_sig_value(r: r, s: new_s)
    new_signature = :public_key.der_encode(:"ECDSA-Sig-Value", sig_val)
    new_signature
  end
end

defmodule Peer do
  @moduledoc false
  use GRPC.Server, service: HyperledgerFabric.Protos.Protos.Endorser.Service

  def send_process_proposal(channel, proposal) do
    HyperledgerFabric.Protos.Protos.Endorser.Stub.process_proposal(channel, proposal)
  end
end

defmodule Orderer do
  @moduledoc false

  use GRPC.Server, service: HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Service

  def send_broadcast(channel, envelope) do
    stream = HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Stub.broadcast(channel)

    # send_only_one_and_end_stream
    GRPC.Stub.send_request(stream, envelope, end_stream: true)

    {:ok, reply_enum} = GRPC.Stub.recv(stream)
    replies = Enum.map(reply_enum, fn {:ok, reply} -> reply end)
    replies
  end
end

defmodule HyperledgerFabric.Common.ChannelHeader do
  @moduledoc false

  def channel_header(tx_id) do
    payload_type = HyperledgerFabric.Protos.Common.HeaderType.value(:ENDORSER_TRANSACTION)

    # should be from params
    channel_id = "universe"
    chaincode_id = "commerce"
    id = HyperledgerFabric.Protos.Protos.ChaincodeID.new(name: chaincode_id)

    channel_header_extension =
      HyperledgerFabric.Protos.Protos.ChaincodeHeaderExtension.new(chaincode_id: id)

    nanos_epoch = System.system_time() |> System.convert_time_unit(:native, :nanosecond)
    seconds = div(nanos_epoch, 1_000_000_000)
    nanos = nanos_epoch - seconds * 1_000_000_000
    tx_timestamp = %Google.Protobuf.Timestamp{seconds: seconds, nanos: nanos}

    cc_versoin = 1

    # GRPC.Message.to_data(
    channel_header =
      HyperledgerFabric.Protos.Common.ChannelHeader.new(
        type: payload_type,
        channel_id: channel_id,
        tx_id: tx_id,
        extension: Protobuf.Encoder.encode(channel_header_extension),
        timestamp: tx_timestamp,
        version: cc_versoin
      )

    channel_header
  end
end

defmodule HyperledgerFabric.FabricCA do
  @moduledoc false

  def connect(args \\ ["getStockWallet"]) do
    private_key = X509.PrivateKey.new_ec(:secp384r1)
    public_key = X509.PublicKey.derive(private_key)
    # public_key_pem = public_key |> X509.PublicKey.to_pem

    # id_bytes = [["CN", "admin"]]
    #
    certificate_request = X509.CSR.new(private_key, "/CN=admin") |> X509.CSR.to_pem()

    req = %{
      "certificate_request" => certificate_request,
      "caName" => "ca.bitt.orgx"
    }

    %MachineGun.Response{body: enrollment_response, status_code: 201} =
      MachineGun.post!(
        "https://localhost:7054/enroll",
        Jason.encode!(req),
        [
          {"authorization", "basic #{Base.encode64("admin:adminpw")}"},
          {"content-type", "application/json"},
          {"accept", "application/json"}
        ],
        %{pool_timeout: 1000, request_timeout: 5000, pool_group: :default}
      )

    result = Jason.decode!(enrollment_response)

    admin_cert = get_in(result, ["result", "Cert"])

    admin_identity = %{certificate: admin_cert, private_key: private_key, public_key: public_key}

    {:ok, orderer_creeds} =
      File.read(
        'crypto-config/ordererOrganizations/bitt.orgx/orderers/orderer.bitt.orgx/tls/ca.crt'
      )

    orderers =
      [
        %{
          host: "localhost:7050",
          creds: orderer_creeds,
          channel_args: %{"grpc.ssl_target_name_override" => "orderer.bitt.orgx"}
        }
      ]
      |> Enum.map(fn config ->
        opts = [
          interceptors: [GRPC.Logger.Client],
          headers: [{"grpc.ssl_target_name_override", "orderer.bitt.orgx"}]
        ]

        cred =
          GRPC.Credential.new(
            ssl: [
              cacertfile:
                "crypto-config/ordererOrganizations/bitt.orgx/orderers/orderer.bitt.orgx/tls/ca.crt",
              "grpc.ssl_target_name_override": "orderer.bitt.orgx"
            ]
          )

        opts = [{:cred, cred}, {"grpc.ssl_target_name_override", "orderer.bitt.orgx"} | opts]

        {:ok, channel} = GRPC.Stub.connect(config.host, opts)

        channel
      end)

    {:ok, peer_creeds} =
      File.read('crypto-config/peerOrganizations/peer.bitt.orgx/peers/peer.bitt.orgx/tls/ca.crt')

    peers =
      [
        %{
          host: "localhost:7051",
          creds: peer_creeds,
          channel_args: %{"grpc.ssl_target_name_override" => "peer.bitt.orgx"}
        }
      ]
      |> Enum.map(fn config ->
        opts = [
          interceptors: [GRPC.Logger.Client],
          headers: [{"grpc.ssl_target_name_override", "orderer.bitt.orgx"}]
        ]

        cred =
          GRPC.Credential.new(
            ssl: [
              cacertfile:
                "crypto-config/peerOrganizations/peer.bitt.orgx/peers/peer.bitt.orgx/tls/ca.crt",
              "grpc.ssl_target_name_override": "ord.bitt.orgx"
            ]
          )

        opts = [{:cred, cred}, {"grpc.ssl_target_name_override", "derer.bitt.orgx"} | opts]

        {:ok, channel} = GRPC.Stub.connect(config.host, opts)
        channel
      end)

    fabric_client = %{identity: admin_identity, orderers: orderers, peers: peers}

    decoded_certificate = Base.url_decode64!(admin_cert)

    mspid = "BITTMSP"

    serialized_admin_identity =
      HyperledgerFabric.Protos.Msp.SerializedIdentity.new(
        mspid: mspid,
        id_bytes: decoded_certificate
      )

    nonce = :crypto.strong_rand_bytes(24)

    digest =
      :crypto.hash(:sha256, nonce <> Protobuf.Encoder.encode(serialized_admin_identity))
      |> Base.encode16(case: :lower)

    channel_header = HyperledgerFabric.Common.ChannelHeader.channel_header(digest)

    signature_header =
      HyperledgerFabric.Protos.Common.SignatureHeader.new(
        creator: Protobuf.Encoder.encode(serialized_admin_identity),
        nonce: nonce
      )

    header =
      HyperledgerFabric.Protos.Common.Header.new(
        channel_header: Protobuf.Encoder.encode(channel_header),
        signature_header: Protobuf.Encoder.encode(signature_header)
      )

    # args = ["getStockWallet"]

    proposal_payload = chaincode_proposal(args)

    proposal =
      HyperledgerFabric.Protos.Protos.Proposal.new(
        header: Protobuf.Encoder.encode(header),
        payload: Protobuf.Encoder.encode(proposal_payload)
      )

    proposal_responses =
      peers
      |> Enum.map(fn peer_channel ->
        proposal_bytes = Protobuf.Encoder.encode(proposal)

        message_digest = :crypto.hash(:sha256, proposal_bytes)

        ecdh_params = :crypto.ec_curve(:secp384r1)

        {:ECPrivateKey, _version, priv_key_out, _publick_key_cert_records, _public_key, _encoding} =
          private_key

        signature =
          :crypto.sign(:ecdsa, :sha256, {:digest, message_digest}, [priv_key_out, ecdh_params])

        # ec_key = admin_identity.private_key
        # signature = :public_key.sign(message_digest, :sha256, ec_key)

        signature = Signature.prevent_malleability(signature)

        signed_proposal =
          HyperledgerFabric.Protos.Protos.SignedProposal.new(
            proposal_bytes: proposal_bytes,
            signature: signature
          )

        case Peer.send_process_proposal(peer_channel, signed_proposal) do
          {:ok, response} -> response
          {:error, %GRPC.RPCError{status: 2, message: message}} -> {:error, message}
        end
      end)

    chaincode_action = chaincode_action(proposal_responses, proposal)

    transaction_action =
      HyperledgerFabric.Protos.Protos.TransactionAction.new(
        header: Protobuf.Encoder.encode(signature_header),
        payload: Protobuf.Encoder.encode(chaincode_action)
      )

    transaction = HyperledgerFabric.Protos.Protos.Transaction.new(actions: [transaction_action])

    payload =
      HyperledgerFabric.Protos.Common.Payload.new(
        header: header,
        data: Protobuf.Encoder.encode(transaction)
      )

    payload_bytes = Protobuf.Encoder.encode(payload)

    # ec_key = admin_identity.private_key
    # payload_signature = :public_key.sign(payload_bytes, :sha256, ec_key)

    message_digest = :crypto.hash(:sha256, payload_bytes)

    ecdh_params = :crypto.ec_curve(:secp384r1)

    {:ECPrivateKey, _version, priv_key_out, _publick_key_cert_records, _public_key, _encoding} =
      private_key

    payload_signature =
      :crypto.sign(:ecdsa, :sha256, {:digest, message_digest}, [priv_key_out, ecdh_params])

    payload_signature = Signature.prevent_malleability(payload_signature)

    envelope =
      HyperledgerFabric.Protos.Common.Envelope.new(
        signature: payload_signature,
        payload: payload_bytes
      )

    :timer.sleep(1000 * 2)

    x =
      orderers
      |> Enum.map(fn channel ->
        Orderer.send_broadcast(channel, envelope)
      end)

    require IEx
    IEx.pry()
  end

  def chaincode_proposal(args) do
    chaincode_id = "commerce"
    id = HyperledgerFabric.Protos.Protos.ChaincodeID.new(name: chaincode_id)
    chaincode_input = HyperledgerFabric.Protos.Protos.ChaincodeInput.new(args: args)

    type = HyperledgerFabric.Protos.Protos.ChaincodeSpec.Type.value(:JAVA)

    chaincode_spec =
      HyperledgerFabric.Protos.Protos.ChaincodeSpec.new(
        type: type,
        chaincode_id: id,
        input: chaincode_input
      )

    input =
      HyperledgerFabric.Protos.Protos.ChaincodeInvocationSpec.new(chaincode_spec: chaincode_spec)

    # from request args
    transient = %{}

    HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload.new(
      input: Protobuf.Encoder.encode(input),
      TransientMap: transient
    )
  end

  defp chaincode_action(proposal_responses, proposal) do
    proposal_response = hd(proposal_responses)
    endorsements = Enum.map(proposal_responses, & &1.endorsement)

    action =
      HyperledgerFabric.Protos.Protos.ChaincodeEndorsedAction.new(
        proposal_response_payload: proposal_response.payload,
        endorsements: endorsements
      )

    # proposal_response_payload =
    #   Protobuf.Decoder.decode(
    #     proposal_response.payload,
    #     HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload
    #   )
    proposal_response_payload =
      Protobuf.Decoder.decode(
        proposal.payload,
        HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload
      )

    proposal_payload =
      HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload.new(
        input: proposal_response_payload.input
      )

    HyperledgerFabric.Protos.Protos.ChaincodeActionPayload.new(
      action: action,
      chaincode_proposal_payload: Protobuf.Encoder.encode(proposal_payload)
    )
  end

  def echo do
    %MachineGun.Response{body: body, status_code: 200} =
      MachineGun.post!(
        "https://httpbin.org/anything",
        "{\"hello\":\"world!\"}",
        [{"content-type", "application/json"}, {"accept", "application/json"}],
        %{pool_timeout: 1000, request_timeout: 5000, pool_group: :default}
      )

    body
  end
end

# admin_cert = X509.Certificate.from_pem(Base.decode64!(admin_identity.certificate))

# // [Angelo De Caro] ECDSA signatures do not have unique representation and this can facilitate
# // replay attacks and more. In order to have a unique representation,
# // this change-set forses BCCSP to generate and accept only signatures
# // with low-S.
# // Bitcoin has also addressed this issue with the following BIP:
# // https://github.com/bitcoin/bips/blob/master/bip-0062.mediawiki
# // Before merging this change-set, we need to ensure that client-sdks
# // generates signatures properly in order to avoid massive rejection
# // of transactions.

# // map for easy lookup of the "N/2" and "N" value per elliptic curve
