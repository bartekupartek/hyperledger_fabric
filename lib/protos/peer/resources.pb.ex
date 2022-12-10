defmodule HyperledgerFabric.Protos.Protos.ChaincodeIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hash, 1, type: :bytes
  field :version, 2, type: :string
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeValidation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :argument, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.VSCCArgs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :endorsement_policy_ref, 1, type: :string, json_name: "endorsementPolicyRef"
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeEndorsement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule HyperledgerFabric.Protos.Protos.ConfigTree do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_config, 1,
    type: HyperledgerFabric.Protos.Common.Config,
    json_name: "channelConfig"

  field :resources_config, 2,
    type: HyperledgerFabric.Protos.Common.Config,
    json_name: "resourcesConfig"
end