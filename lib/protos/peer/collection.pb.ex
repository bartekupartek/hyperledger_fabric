defmodule HyperledgerFabric.Protos.Protos.CollectionConfigPackage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:config, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.CollectionConfig)
end

defmodule HyperledgerFabric.Protos.Protos.CollectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:payload, 0)

  field(:static_collection_config, 1,
    type: HyperledgerFabric.Protos.Protos.StaticCollectionConfig,
    json_name: "staticCollectionConfig",
    oneof: 0
  )
end

defmodule HyperledgerFabric.Protos.Protos.StaticCollectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:name, 1, type: :string)

  field(:member_orgs_policy, 2,
    type: HyperledgerFabric.Protos.Protos.CollectionPolicyConfig,
    json_name: "memberOrgsPolicy"
  )

  field(:required_peer_count, 3, type: :int32, json_name: "requiredPeerCount")
  field(:maximum_peer_count, 4, type: :int32, json_name: "maximumPeerCount")
  field(:block_to_live, 5, type: :uint64, json_name: "blockToLive")
  field(:member_only_read, 6, type: :bool, json_name: "memberOnlyRead")
  field(:member_only_write, 7, type: :bool, json_name: "memberOnlyWrite")

  field(:endorsement_policy, 8,
    type: HyperledgerFabric.Protos.Protos.ApplicationPolicy,
    json_name: "endorsementPolicy"
  )
end

defmodule HyperledgerFabric.Protos.Protos.CollectionPolicyConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:payload, 0)

  field(:signature_policy, 1,
    type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope,
    json_name: "signaturePolicy",
    oneof: 0
  )
end
