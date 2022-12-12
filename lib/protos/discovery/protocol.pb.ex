defmodule HyperledgerFabric.Protos.Discovery.SignedRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:payload, 1, type: :bytes)
  field(:signature, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Discovery.Request do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:authentication, 1, type: HyperledgerFabric.Protos.Discovery.AuthInfo)
  field(:queries, 2, repeated: true, type: HyperledgerFabric.Protos.Discovery.Query)
end

defmodule HyperledgerFabric.Protos.Discovery.Response do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:results, 1, repeated: true, type: HyperledgerFabric.Protos.Discovery.QueryResult)
end

defmodule HyperledgerFabric.Protos.Discovery.AuthInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:client_identity, 1, type: :bytes, json_name: "clientIdentity")
  field(:client_tls_cert_hash, 2, type: :bytes, json_name: "clientTlsCertHash")
end

defmodule HyperledgerFabric.Protos.Discovery.Query do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:query, 0)

  field(:channel, 1, type: :string)

  field(:config_query, 2,
    type: HyperledgerFabric.Protos.Discovery.ConfigQuery,
    json_name: "configQuery",
    oneof: 0
  )

  field(:peer_query, 3,
    type: HyperledgerFabric.Protos.Discovery.PeerMembershipQuery,
    json_name: "peerQuery",
    oneof: 0
  )

  field(:cc_query, 4,
    type: HyperledgerFabric.Protos.Discovery.ChaincodeQuery,
    json_name: "ccQuery",
    oneof: 0
  )

  field(:local_peers, 5,
    type: HyperledgerFabric.Protos.Discovery.LocalPeerQuery,
    json_name: "localPeers",
    oneof: 0
  )
end

defmodule HyperledgerFabric.Protos.Discovery.QueryResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:result, 0)

  field(:error, 1, type: HyperledgerFabric.Protos.Discovery.Error, oneof: 0)

  field(:config_result, 2,
    type: HyperledgerFabric.Protos.Discovery.ConfigResult,
    json_name: "configResult",
    oneof: 0
  )

  field(:cc_query_res, 3,
    type: HyperledgerFabric.Protos.Discovery.ChaincodeQueryResult,
    json_name: "ccQueryRes",
    oneof: 0
  )

  field(:members, 4, type: HyperledgerFabric.Protos.Discovery.PeerMembershipResult, oneof: 0)
end

defmodule HyperledgerFabric.Protos.Discovery.ConfigQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule HyperledgerFabric.Protos.Discovery.ConfigResult.MspsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: HyperledgerFabric.Protos.Msp.FabricMSPConfig)
end

defmodule HyperledgerFabric.Protos.Discovery.ConfigResult.OrderersEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: HyperledgerFabric.Protos.Discovery.Endpoints)
end

defmodule HyperledgerFabric.Protos.Discovery.ConfigResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:msps, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Discovery.ConfigResult.MspsEntry,
    map: true
  )

  field(:orderers, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Discovery.ConfigResult.OrderersEntry,
    map: true
  )
end

defmodule HyperledgerFabric.Protos.Discovery.PeerMembershipQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:filter, 1, type: HyperledgerFabric.Protos.Protos.ChaincodeInterest)
end

defmodule HyperledgerFabric.Protos.Discovery.PeerMembershipResult.PeersByOrgEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: HyperledgerFabric.Protos.Discovery.Peers)
end

defmodule HyperledgerFabric.Protos.Discovery.PeerMembershipResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:peers_by_org, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Discovery.PeerMembershipResult.PeersByOrgEntry,
    json_name: "peersByOrg",
    map: true
  )
end

defmodule HyperledgerFabric.Protos.Discovery.ChaincodeQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:interests, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.ChaincodeInterest)
end

defmodule HyperledgerFabric.Protos.Discovery.ChaincodeQueryResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:content, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Discovery.EndorsementDescriptor
  )
end

defmodule HyperledgerFabric.Protos.Discovery.LocalPeerQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule HyperledgerFabric.Protos.Discovery.EndorsementDescriptor.EndorsersByGroupsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: HyperledgerFabric.Protos.Discovery.Peers)
end

defmodule HyperledgerFabric.Protos.Discovery.EndorsementDescriptor do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:chaincode, 1, type: :string)

  field(:endorsers_by_groups, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Discovery.EndorsementDescriptor.EndorsersByGroupsEntry,
    json_name: "endorsersByGroups",
    map: true
  )

  field(:layouts, 3, repeated: true, type: HyperledgerFabric.Protos.Discovery.Layout)
end

defmodule HyperledgerFabric.Protos.Discovery.Layout.QuantitiesByGroupEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: :uint32)
end

defmodule HyperledgerFabric.Protos.Discovery.Layout do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:quantities_by_group, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Discovery.Layout.QuantitiesByGroupEntry,
    json_name: "quantitiesByGroup",
    map: true
  )
end

defmodule HyperledgerFabric.Protos.Discovery.Peers do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:peers, 1, repeated: true, type: HyperledgerFabric.Protos.Discovery.Peer)
end

defmodule HyperledgerFabric.Protos.Discovery.Peer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:state_info, 1, type: HyperledgerFabric.Protos.Gossip.Envelope, json_name: "stateInfo")

  field(:membership_info, 2,
    type: HyperledgerFabric.Protos.Gossip.Envelope,
    json_name: "membershipInfo"
  )

  field(:identity, 3, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Discovery.Error do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:content, 1, type: :string)
end

defmodule HyperledgerFabric.Protos.Discovery.Endpoints do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:endpoint, 1, repeated: true, type: HyperledgerFabric.Protos.Discovery.Endpoint)
end

defmodule HyperledgerFabric.Protos.Discovery.Endpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:host, 1, type: :string)
  field(:port, 2, type: :uint32)
end

defmodule HyperledgerFabric.Protos.Discovery.Discovery.Service do
  @moduledoc false
  use GRPC.Service, name: "discovery.Discovery", protoc_gen_elixir_version: "0.11.0"

  rpc(
    :Discover,
    HyperledgerFabric.Protos.Discovery.SignedRequest,
    HyperledgerFabric.Protos.Discovery.Response
  )
end

defmodule HyperledgerFabric.Protos.Discovery.Discovery.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Discovery.Discovery.Service
end
