defmodule HyperledgerFabric.Client do
  @moduledoc """
  Implementation of the Hyperledger Fabric client.

  This module handles the connection, transaction creation, and communication
  with the Fabric network.
  """

  alias HyperledgerFabric.Common
  alias HyperledgerFabric.Orderer
  alias HyperledgerFabric.Peer
  alias HyperledgerFabric.Protos.Common.Header
  alias HyperledgerFabric.Protos.Common.Payload
  alias HyperledgerFabric.Protos.Msp.SerializedIdentity
  alias HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload
  alias HyperledgerFabric.Protos.Protos.Proposal
  alias HyperledgerFabric.Protos.Protos.SignedProposal
  alias HyperledgerFabric.Protos.Protos.Transaction
  alias HyperledgerFabric.Protos.Protos.TransactionAction
  alias HyperledgerFabric.Signature
  require Logger

  @doc """
  Connects to the Hyperledger Fabric network.

  This function establishes connections to orderers
  and peers and enrolls with the Fabric CA.
  """
  def connect(opts \\ []) do
    with {:ok, identity} <- enroll_with_ca(opts),
         {:ok, orderer_channels} <- connect_to_orderers(),
         {:ok, peer_channels} <- connect_to_peers() do
      client = %{
        identity: identity,
        orderers: orderer_channels,
        peers: peer_channels
      }

      {:ok, client}
    else
      {:error, reason} -> {:error, reason}
    end
  end

  @doc """
  Invokes a chaincode function on the network.
  """
  def invoke_chaincode(chaincode_id, function_name, args, channel_id, opts \\ []) do
    client = opts[:client] || process_client()

    transient_map = opts[:transient_map] || %{}

    tx_id = generate_tx_id(client.identity)

    proposal =
      create_chaincode_proposal(
        client.identity,
        chaincode_id,
        function_name,
        args,
        channel_id,
        tx_id,
        transient_map
      )

    case send_proposal_to_peers(client.peers, proposal, client.identity) do
      {:ok, proposal_responses} ->
        transaction = create_transaction(proposal_responses, proposal)

        envelope = create_envelope(transaction, client.identity, tx_id)

        case send_transaction_to_orderers(client.orderers, envelope) do
          {:ok, responses} ->
            {:ok, %{transaction_id: tx_id, responses: responses}}

          {:error, reason} ->
            {:error, reason}
        end

      {:error, reason} ->
        {:error, reason}
    end
  end

  @doc """
  Queries a chaincode function on the network.
  """
  def query_chaincode(chaincode_id, function_name, args, channel_id, opts \\ []) do
    client = opts[:client] || process_client()

    transient_map = opts[:transient_map] || %{}

    tx_id = generate_tx_id(client.identity)

    proposal =
      create_chaincode_proposal(
        client.identity,
        chaincode_id,
        function_name,
        args,
        channel_id,
        tx_id,
        transient_map
      )

    case send_proposal_to_peers(client.peers, proposal, client.identity) do
      {:ok, responses} ->
        case find_successful_response(responses) do
          {:ok, response} ->
            {:ok, response.response.payload}

          {:error, reason} ->
            {:error, reason}
        end

      {:error, reason} ->
        {:error, reason}
    end
  end

  defp process_client do
    case Process.get(:fabric_client) do
      nil ->
        {:ok, client} = connect()
        Process.put(:fabric_client, client)
        client

      client ->
        client
    end
  end

  defp enroll_with_ca(opts \\ []) do
    ca_url = Application.fetch_env!(:hyperledger_fabric, :ca_url)
    ca_name = Application.fetch_env!(:hyperledger_fabric, :ca_name)
    ca_username = Application.fetch_env!(:hyperledger_fabric, :ca_username)
    ca_password = Application.fetch_env!(:hyperledger_fabric, :ca_password)

    private_key = X509.PrivateKey.new_ec(:secp384r1)
    public_key = X509.PublicKey.derive(private_key)

    certificate_request = X509.CSR.new(private_key, "/CN=#{ca_username}") |> X509.CSR.to_pem()

    req = %{
      "certificate_request" => certificate_request,
      "caName" => ca_name
    }

    auth_header = "basic #{Base.encode64("#{ca_username}:#{ca_password}")}"

    case MachineGun.post!(
           ca_url,
           Jason.encode!(req),
           [
             {"authorization", auth_header},
             {"content-type", "application/json"},
             {"accept", "application/json"}
           ],
           %{pool_group: :default}
         ) do
      %MachineGun.Response{body: enrollment_response, status_code: 201} ->
        result = Jason.decode!(enrollment_response)
        admin_cert = get_in(result, ["result", "Cert"])

        {:ok, %{certificate: admin_cert, private_key: private_key, public_key: public_key}}

      %MachineGun.Response{body: error_body, status_code: status_code} ->
        {:error, "CA enrollment failed with status code #{status_code}: #{error_body}"}

      {:error, reason} ->
        {:error, reason}
    end
  end

  defp connect_to_orderers do
    orderer_configs = Application.fetch_env!(:hyperledger_fabric, :orderers)

    orderer_channels =
      Enum.map(orderer_configs, fn config ->
        tls_cert_path = config.tls_cert_path

        case File.read(tls_cert_path) do
          {:ok, tls_cert} ->
            opts = [
              interceptors: [GRPC.Logger.Client],
              headers: [{"grpc.ssl_target_name_override", config.ssl_target_name_override}]
            ]

            cred =
              GRPC.Credential.new(
                ssl: [
                  cacertfile: tls_cert_path,
                  "grpc.ssl_target_name_override": config.ssl_target_name_override
                ]
              )

            opts = [
              {:cred, cred},
              {"grpc.ssl_target_name_override", config.ssl_target_name_override} | opts
            ]

            case GRPC.Stub.connect(config.host, opts) do
              {:ok, channel} ->
                %{
                  channel: channel,
                  config: config
                }

              {:error, reason} ->
                Logger.error("Failed to connect to orderer at #{config.host}: #{inspect(reason)}")
                nil
            end

          {:error, reason} ->
            Logger.error("Failed to read TLS cert at #{tls_cert_path}: #{inspect(reason)}")
            nil
        end
      end)
      |> Enum.reject(&is_nil/1)

    case orderer_channels do
      [] -> {:error, "Failed to connect to any orderers"}
      _channels -> {:ok, orderer_channels}
    end
  end

  defp connect_to_peers do
    peer_configs = Application.fetch_env!(:hyperledger_fabric, :peers)

    peer_channels =
      Enum.map(peer_configs, fn config ->
        tls_cert_path = config.tls_cert_path

        case File.read(tls_cert_path) do
          {:ok, tls_cert} ->
            opts = [
              interceptors: [GRPC.Logger.Client],
              headers: [{"grpc.ssl_target_name_override", config.ssl_target_name_override}]
            ]

            cred =
              GRPC.Credential.new(
                ssl: [
                  cacertfile: tls_cert_path,
                  "grpc.ssl_target_name_override": config.ssl_target_name_override
                ]
              )

            opts = [
              {:cred, cred},
              {"grpc.ssl_target_name_override", config.ssl_target_name_override} | opts
            ]

            case GRPC.Stub.connect(config.host, opts) do
              {:ok, channel} ->
                %{
                  channel: channel,
                  config: config
                }

              {:error, reason} ->
                Logger.error("Failed to connect to peer at #{config.host}: #{inspect(reason)}")
                nil
            end

          {:error, reason} ->
            Logger.error("Failed to read TLS cert at #{tls_cert_path}: #{inspect(reason)}")
            nil
        end
      end)
      |> Enum.reject(&is_nil/1)

    case peer_channels do
      [] -> {:error, "Failed to connect to any peers"}
      _channels -> {:ok, peer_channels}
    end
  end

  defp generate_tx_id(identity) do
    msp_id = Application.fetch_env!(:hyperledger_fabric, :msp_id)

    decoded_certificate = Base.url_decode64!(identity.certificate)

    serialized_identity =
      SerializedIdentity.new(
        mspid: msp_id,
        id_bytes: decoded_certificate
      )

    nonce = :crypto.strong_rand_bytes(24)

    digest =
      :crypto.hash(:sha256, nonce <> Protobuf.Encoder.encode(serialized_identity))
      |> Base.encode16(case: :lower)

    {digest, nonce, serialized_identity}
  end

  defp create_chaincode_proposal(
         identity,
         chaincode_id,
         function_name,
         args,
         channel_id,
         {tx_id, nonce, serialized_identity},
         transient_map
       ) do
    channel_header = Common.create_channel_header(tx_id, channel_id, chaincode_id)

    signature_header =
      Header.SignatureHeader.new(
        creator: Protobuf.Encoder.encode(serialized_identity),
        nonce: nonce
      )

    header =
      Header.new(
        channel_header: Protobuf.Encoder.encode(channel_header),
        signature_header: Protobuf.Encoder.encode(signature_header)
      )

    chaincode_args = [function_name | args]

    proposal_payload =
      create_chaincode_proposal_payload(chaincode_id, chaincode_args, transient_map)

    proposal =
      Proposal.new(
        header: Protobuf.Encoder.encode(header),
        payload: Protobuf.Encoder.encode(proposal_payload)
      )

    proposal
  end

  defp create_chaincode_proposal_payload(chaincode_id, args, transient_map) do
    chaincode_input =
      HyperledgerFabric.Protos.Protos.ChaincodeInput.new(args: Enum.map(args, &to_string/1))

    id = HyperledgerFabric.Protos.Protos.ChaincodeID.new(name: chaincode_id)

    chaincode_type = Application.fetch_env!(:hyperledger_fabric, :chaincode_type)
    type_value = HyperledgerFabric.Protos.Protos.ChaincodeSpec.Type.value(chaincode_type)

    chaincode_spec =
      HyperledgerFabric.Protos.Protos.ChaincodeSpec.new(
        type: type_value,
        chaincode_id: id,
        input: chaincode_input
      )

    input =
      HyperledgerFabric.Protos.Protos.ChaincodeInvocationSpec.new(chaincode_spec: chaincode_spec)

    HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload.new(
      input: Protobuf.Encoder.encode(input),
      TransientMap: transient_map
    )
  end

  # Sends the proposal to peers for endorsement
  defp send_proposal_to_peers(peers, proposal, identity) do
    proposal_bytes = Protobuf.Encoder.encode(proposal)

    message_digest = :crypto.hash(:sha256, proposal_bytes)

    {:ECPrivateKey, _version, priv_key_out, _publick_key_cert_records, _public_key, _encoding} =
      identity.private_key

    ecdh_params = :crypto.ec_curve(:secp384r1)

    signature =
      :crypto.sign(:ecdsa, :sha256, {:digest, message_digest}, [priv_key_out, ecdh_params])

    signature = Signature.prevent_malleability(signature)

    signed_proposal =
      SignedProposal.new(
        proposal_bytes: proposal_bytes,
        signature: signature
      )

    responses =
      Enum.map(peers, fn peer_channel ->
        try do
          Peer.send_process_proposal(peer_channel.channel, signed_proposal)
        catch
          kind, reason ->
            Logger.error("Error sending proposal to peer: #{inspect(reason)}")
            {:error, reason}
        end
      end)

    case filter_successful_responses(responses) do
      [] ->
        {:error, "No successful responses from peers"}

      filtered_responses ->
        {:ok, filtered_responses}
    end
  end

  defp filter_successful_responses(responses) do
    Enum.filter(responses, fn
      {:ok, response} -> response.response.status == 200
      _ -> false
    end)
    |> Enum.map(fn {:ok, response} -> response end)
  end

  defp find_successful_response(responses) do
    case Enum.find(responses, fn response -> response.response.status == 200 end) do
      nil -> {:error, "No successful responses"}
      response -> {:ok, response}
    end
  end

  defp create_transaction(proposal_responses, proposal) do
    proposal_response = hd(proposal_responses)
    header_bytes = proposal.header

    header = Protobuf.Decoder.decode(header_bytes, Header)

    signature_header_bytes = header.signature_header
    signature_header = Protobuf.Decoder.decode(signature_header_bytes, Header.SignatureHeader)

    proposal_payload_bytes = proposal.payload
    proposal_payload = Protobuf.Decoder.decode(proposal_payload_bytes, ChaincodeProposalPayload)

    endorsements = Enum.map(proposal_responses, & &1.endorsement)

    action =
      HyperledgerFabric.Protos.Protos.ChaincodeEndorsedAction.new(
        proposal_response_payload: proposal_response.payload,
        endorsements: endorsements
      )

    simplified_payload = ChaincodeProposalPayload.new(input: proposal_payload.input)

    chaincode_action_payload =
      HyperledgerFabric.Protos.Protos.ChaincodeActionPayload.new(
        action: action,
        chaincode_proposal_payload: Protobuf.Encoder.encode(simplified_payload)
      )

    transaction_action =
      TransactionAction.new(
        header: signature_header_bytes,
        payload: Protobuf.Encoder.encode(chaincode_action_payload)
      )

    Transaction.new(actions: [transaction_action])
  end

  defp create_envelope(transaction, identity, {tx_id, _nonce, _serialized_identity}) do
    payload =
      Payload.new(
        header:
          Protobuf.Decoder.decode(
            transaction.actions |> hd |> Map.get(:header),
            Header.SignatureHeader
          ),
        data: Protobuf.Encoder.encode(transaction)
      )

    payload_bytes = Protobuf.Encoder.encode(payload)

    message_digest = :crypto.hash(:sha256, payload_bytes)

    {:ECPrivateKey, _version, priv_key_out, _publick_key_cert_records, _public_key, _encoding} =
      identity.private_key

    ecdh_params = :crypto.ec_curve(:secp384r1)

    payload_signature =
      :crypto.sign(:ecdsa, :sha256, {:digest, message_digest}, [priv_key_out, ecdh_params])

    payload_signature = Signature.prevent_malleability(payload_signature)

    Envelope.new(
      signature: payload_signature,
      payload: payload_bytes
    )
  end

  defp send_transaction_to_orderers(orderers, envelope) do
    tasks =
      Enum.map(orderers, fn orderer ->
        Task.async(fn ->
          try do
            Orderer.send_broadcast(orderer.channel, envelope)
          catch
            kind, reason ->
              Logger.error("Error sending transaction to orderer: #{inspect(reason)}")
              {:error, reason}
          end
        end)
      end)

    timeout = Application.get_env(:hyperledger_fabric, :orderer_timeout, 30_000)

    try do
      results = Task.await_many(tasks, timeout)

      case filter_successful_orderer_responses(results) do
        [] ->
          {:error, "No successful responses from orderers"}

        filtered_results ->
          {:ok, filtered_results}
      end
    catch
      :exit, {:timeout, _} ->
        {:error, "Timeout waiting for orderer responses"}
    end
  end

  defp filter_successful_orderer_responses(responses) do
    Enum.filter(responses, fn
      {:ok, response_list} when is_list(response_list) ->
        Enum.any?(response_list, fn response -> response.status == 200 end)

      _ ->
        false
    end)
  end
end
