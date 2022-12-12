defmodule HyperledgerFabric.Protos.Protos.AnchorPeers do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:anchor_peers, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.AnchorPeer,
    json_name: "anchorPeers"
  )
end

defmodule HyperledgerFabric.Protos.Protos.AnchorPeer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:host, 1, type: :string)
  field(:port, 2, type: :int32)
end

defmodule HyperledgerFabric.Protos.Protos.APIResource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:policy_ref, 1, type: :string, json_name: "policyRef")
end

defmodule HyperledgerFabric.Protos.Protos.ACLs.AclsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: HyperledgerFabric.Protos.Protos.APIResource)
end

defmodule HyperledgerFabric.Protos.Protos.ACLs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:acls, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.ACLs.AclsEntry, map: true)
end
