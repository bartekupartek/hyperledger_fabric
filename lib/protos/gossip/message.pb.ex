defmodule HyperledgerFabric.Protos.Gossip.PullMsgType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:UNDEFINED, 0)
  field(:BLOCK_MSG, 1)
  field(:IDENTITY_MSG, 2)
end

defmodule HyperledgerFabric.Protos.Gossip.GossipMessage.Tag do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:UNDEFINED, 0)
  field(:EMPTY, 1)
  field(:ORG_ONLY, 2)
  field(:CHAN_ONLY, 3)
  field(:CHAN_AND_ORG, 4)
  field(:CHAN_OR_ORG, 5)
end

defmodule HyperledgerFabric.Protos.Gossip.Envelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:payload, 1, type: :bytes)
  field(:signature, 2, type: :bytes)

  field(:secret_envelope, 3,
    type: HyperledgerFabric.Protos.Gossip.SecretEnvelope,
    json_name: "secretEnvelope"
  )
end

defmodule HyperledgerFabric.Protos.Gossip.SecretEnvelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:payload, 1, type: :bytes)
  field(:signature, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Gossip.Secret do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:content, 0)

  field(:internalEndpoint, 1, type: :string, oneof: 0)
end

defmodule HyperledgerFabric.Protos.Gossip.GossipMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:content, 0)

  field(:nonce, 1, type: :uint64)
  field(:channel, 2, type: :bytes)
  field(:tag, 3, type: HyperledgerFabric.Protos.Gossip.GossipMessage.Tag, enum: true)

  field(:alive_msg, 5,
    type: HyperledgerFabric.Protos.Gossip.AliveMessage,
    json_name: "aliveMsg",
    oneof: 0
  )

  field(:mem_req, 6,
    type: HyperledgerFabric.Protos.Gossip.MembershipRequest,
    json_name: "memReq",
    oneof: 0
  )

  field(:mem_res, 7,
    type: HyperledgerFabric.Protos.Gossip.MembershipResponse,
    json_name: "memRes",
    oneof: 0
  )

  field(:data_msg, 8,
    type: HyperledgerFabric.Protos.Gossip.DataMessage,
    json_name: "dataMsg",
    oneof: 0
  )

  field(:hello, 9, type: HyperledgerFabric.Protos.Gossip.GossipHello, oneof: 0)

  field(:data_dig, 10,
    type: HyperledgerFabric.Protos.Gossip.DataDigest,
    json_name: "dataDig",
    oneof: 0
  )

  field(:data_req, 11,
    type: HyperledgerFabric.Protos.Gossip.DataRequest,
    json_name: "dataReq",
    oneof: 0
  )

  field(:data_update, 12,
    type: HyperledgerFabric.Protos.Gossip.DataUpdate,
    json_name: "dataUpdate",
    oneof: 0
  )

  field(:empty, 13, type: HyperledgerFabric.Protos.Gossip.Empty, oneof: 0)
  field(:conn, 14, type: HyperledgerFabric.Protos.Gossip.ConnEstablish, oneof: 0)

  field(:state_info, 15,
    type: HyperledgerFabric.Protos.Gossip.StateInfo,
    json_name: "stateInfo",
    oneof: 0
  )

  field(:state_snapshot, 16,
    type: HyperledgerFabric.Protos.Gossip.StateInfoSnapshot,
    json_name: "stateSnapshot",
    oneof: 0
  )

  field(:state_info_pull_req, 17,
    type: HyperledgerFabric.Protos.Gossip.StateInfoPullRequest,
    json_name: "stateInfoPullReq",
    oneof: 0
  )

  field(:state_request, 18,
    type: HyperledgerFabric.Protos.Gossip.RemoteStateRequest,
    json_name: "stateRequest",
    oneof: 0
  )

  field(:state_response, 19,
    type: HyperledgerFabric.Protos.Gossip.RemoteStateResponse,
    json_name: "stateResponse",
    oneof: 0
  )

  field(:leadership_msg, 20,
    type: HyperledgerFabric.Protos.Gossip.LeadershipMessage,
    json_name: "leadershipMsg",
    oneof: 0
  )

  field(:peer_identity, 21,
    type: HyperledgerFabric.Protos.Gossip.PeerIdentity,
    json_name: "peerIdentity",
    oneof: 0
  )

  field(:ack, 22, type: HyperledgerFabric.Protos.Gossip.Acknowledgement, oneof: 0)
  field(:privateReq, 23, type: HyperledgerFabric.Protos.Gossip.RemotePvtDataRequest, oneof: 0)
  field(:privateRes, 24, type: HyperledgerFabric.Protos.Gossip.RemotePvtDataResponse, oneof: 0)

  field(:private_data, 25,
    type: HyperledgerFabric.Protos.Gossip.PrivateDataMessage,
    json_name: "privateData",
    oneof: 0
  )
end

defmodule HyperledgerFabric.Protos.Gossip.StateInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:timestamp, 2, type: HyperledgerFabric.Protos.Gossip.PeerTime)
  field(:pki_id, 3, type: :bytes, json_name: "pkiId")
  field(:channel_MAC, 4, type: :bytes, json_name: "channelMAC")
  field(:properties, 5, type: HyperledgerFabric.Protos.Gossip.Properties)
end

defmodule HyperledgerFabric.Protos.Gossip.Properties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:ledger_height, 1, type: :uint64, json_name: "ledgerHeight")
  field(:left_channel, 2, type: :bool, json_name: "leftChannel")
  field(:chaincodes, 3, repeated: true, type: HyperledgerFabric.Protos.Gossip.Chaincode)
end

defmodule HyperledgerFabric.Protos.Gossip.StateInfoSnapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:elements, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.Envelope)
end

defmodule HyperledgerFabric.Protos.Gossip.StateInfoPullRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:channel_MAC, 1, type: :bytes, json_name: "channelMAC")
end

defmodule HyperledgerFabric.Protos.Gossip.ConnEstablish do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:pki_id, 1, type: :bytes, json_name: "pkiId")
  field(:identity, 2, type: :bytes)
  field(:tls_cert_hash, 3, type: :bytes, json_name: "tlsCertHash")
  field(:probe, 4, type: :bool)
end

defmodule HyperledgerFabric.Protos.Gossip.PeerIdentity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:pki_id, 1, type: :bytes, json_name: "pkiId")
  field(:cert, 2, type: :bytes)
  field(:metadata, 3, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Gossip.DataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:nonce, 1, type: :uint64)
  field(:digests, 2, repeated: true, type: :bytes)

  field(:msg_type, 3,
    type: HyperledgerFabric.Protos.Gossip.PullMsgType,
    json_name: "msgType",
    enum: true
  )
end

defmodule HyperledgerFabric.Protos.Gossip.GossipHello do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:nonce, 1, type: :uint64)
  field(:metadata, 2, type: :bytes)

  field(:msg_type, 3,
    type: HyperledgerFabric.Protos.Gossip.PullMsgType,
    json_name: "msgType",
    enum: true
  )
end

defmodule HyperledgerFabric.Protos.Gossip.DataUpdate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:nonce, 1, type: :uint64)
  field(:data, 2, repeated: true, type: HyperledgerFabric.Protos.Gossip.Envelope)

  field(:msg_type, 3,
    type: HyperledgerFabric.Protos.Gossip.PullMsgType,
    json_name: "msgType",
    enum: true
  )
end

defmodule HyperledgerFabric.Protos.Gossip.DataDigest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:nonce, 1, type: :uint64)
  field(:digests, 2, repeated: true, type: :bytes)

  field(:msg_type, 3,
    type: HyperledgerFabric.Protos.Gossip.PullMsgType,
    json_name: "msgType",
    enum: true
  )
end

defmodule HyperledgerFabric.Protos.Gossip.DataMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:payload, 1, type: HyperledgerFabric.Protos.Gossip.Payload)
end

defmodule HyperledgerFabric.Protos.Gossip.PrivateDataMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:payload, 1, type: HyperledgerFabric.Protos.Gossip.PrivatePayload)
end

defmodule HyperledgerFabric.Protos.Gossip.Payload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:seq_num, 1, type: :uint64, json_name: "seqNum")
  field(:data, 2, type: :bytes)
  field(:private_data, 3, repeated: true, type: :bytes, json_name: "privateData")
end

defmodule HyperledgerFabric.Protos.Gossip.PrivatePayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:collection_name, 1, type: :string, json_name: "collectionName")
  field(:namespace, 2, type: :string)
  field(:tx_id, 3, type: :string, json_name: "txId")
  field(:private_rwset, 4, type: :bytes, json_name: "privateRwset")
  field(:private_sim_height, 5, type: :uint64, json_name: "privateSimHeight")

  field(:collection_configs, 6,
    type: HyperledgerFabric.Protos.Protos.CollectionConfigPackage,
    json_name: "collectionConfigs"
  )
end

defmodule HyperledgerFabric.Protos.Gossip.AliveMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:membership, 1, type: HyperledgerFabric.Protos.Gossip.Member)
  field(:timestamp, 2, type: HyperledgerFabric.Protos.Gossip.PeerTime)
  field(:identity, 4, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Gossip.LeadershipMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:pki_id, 1, type: :bytes, json_name: "pkiId")
  field(:timestamp, 2, type: HyperledgerFabric.Protos.Gossip.PeerTime)
  field(:is_declaration, 3, type: :bool, json_name: "isDeclaration")
end

defmodule HyperledgerFabric.Protos.Gossip.PeerTime do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:inc_num, 1, type: :uint64, json_name: "incNum")
  field(:seq_num, 2, type: :uint64, json_name: "seqNum")
end

defmodule HyperledgerFabric.Protos.Gossip.MembershipRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:self_information, 1,
    type: HyperledgerFabric.Protos.Gossip.Envelope,
    json_name: "selfInformation"
  )

  field(:known, 2, repeated: true, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Gossip.MembershipResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:alive, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.Envelope)
  field(:dead, 2, repeated: true, type: HyperledgerFabric.Protos.Gossip.Envelope)
end

defmodule HyperledgerFabric.Protos.Gossip.Member do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:endpoint, 1, type: :string)
  field(:metadata, 2, type: :bytes)
  field(:pki_id, 3, type: :bytes, json_name: "pkiId")
end

defmodule HyperledgerFabric.Protos.Gossip.Empty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule HyperledgerFabric.Protos.Gossip.RemoteStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:start_seq_num, 1, type: :uint64, json_name: "startSeqNum")
  field(:end_seq_num, 2, type: :uint64, json_name: "endSeqNum")
end

defmodule HyperledgerFabric.Protos.Gossip.RemoteStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:payloads, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.Payload)
end

defmodule HyperledgerFabric.Protos.Gossip.RemotePvtDataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:digests, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.PvtDataDigest)
end

defmodule HyperledgerFabric.Protos.Gossip.PvtDataDigest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:tx_id, 1, type: :string, json_name: "txId")
  field(:namespace, 2, type: :string)
  field(:collection, 3, type: :string)
  field(:block_seq, 4, type: :uint64, json_name: "blockSeq")
  field(:seq_in_block, 5, type: :uint64, json_name: "seqInBlock")
end

defmodule HyperledgerFabric.Protos.Gossip.RemotePvtDataResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:elements, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.PvtDataElement)
end

defmodule HyperledgerFabric.Protos.Gossip.PvtDataElement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:digest, 1, type: HyperledgerFabric.Protos.Gossip.PvtDataDigest)
  field(:payload, 2, repeated: true, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Gossip.PvtDataPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:tx_seq_in_block, 1, type: :uint64, json_name: "txSeqInBlock")
  field(:payload, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Gossip.Acknowledgement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:error, 1, type: :string)
end

defmodule HyperledgerFabric.Protos.Gossip.Chaincode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:name, 1, type: :string)
  field(:version, 2, type: :string)
  field(:metadata, 3, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Gossip.Gossip.Service do
  @moduledoc false
  use GRPC.Service, name: "gossip.Gossip", protoc_gen_elixir_version: "0.11.0"

  rpc(
    :GossipStream,
    stream(HyperledgerFabric.Protos.Gossip.Envelope),
    stream(HyperledgerFabric.Protos.Gossip.Envelope)
  )

  rpc(:Ping, HyperledgerFabric.Protos.Gossip.Empty, HyperledgerFabric.Protos.Gossip.Empty)
end

defmodule HyperledgerFabric.Protos.Gossip.Gossip.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Gossip.Gossip.Service
end
