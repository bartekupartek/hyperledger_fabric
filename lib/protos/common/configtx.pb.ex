defmodule HyperledgerFabric.Protos.Common.ConfigEnvelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :config, 1, type: HyperledgerFabric.Protos.Common.Config
  field :last_update, 2, type: HyperledgerFabric.Protos.Common.Envelope, json_name: "lastUpdate"
end

defmodule HyperledgerFabric.Protos.Common.Config do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64

  field :channel_group, 2,
    type: HyperledgerFabric.Protos.Common.ConfigGroup,
    json_name: "channelGroup"
end

defmodule HyperledgerFabric.Protos.Common.ConfigUpdateEnvelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :config_update, 1, type: :bytes, json_name: "configUpdate"
  field :signatures, 2, repeated: true, type: HyperledgerFabric.Protos.Common.ConfigSignature
end

defmodule HyperledgerFabric.Protos.Common.ConfigUpdate.IsolatedDataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.ConfigUpdate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId"
  field :read_set, 2, type: HyperledgerFabric.Protos.Common.ConfigGroup, json_name: "readSet"
  field :write_set, 3, type: HyperledgerFabric.Protos.Common.ConfigGroup, json_name: "writeSet"

  field :isolated_data, 5,
    repeated: true,
    type: HyperledgerFabric.Protos.Common.ConfigUpdate.IsolatedDataEntry,
    json_name: "isolatedData",
    map: true
end

defmodule HyperledgerFabric.Protos.Common.ConfigGroup.GroupsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: HyperledgerFabric.Protos.Common.ConfigGroup
end

defmodule HyperledgerFabric.Protos.Common.ConfigGroup.ValuesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: HyperledgerFabric.Protos.Common.ConfigValue
end

defmodule HyperledgerFabric.Protos.Common.ConfigGroup.PoliciesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: HyperledgerFabric.Protos.Common.ConfigPolicy
end

defmodule HyperledgerFabric.Protos.Common.ConfigGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :uint64

  field :groups, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Common.ConfigGroup.GroupsEntry,
    map: true

  field :values, 3,
    repeated: true,
    type: HyperledgerFabric.Protos.Common.ConfigGroup.ValuesEntry,
    map: true

  field :policies, 4,
    repeated: true,
    type: HyperledgerFabric.Protos.Common.ConfigGroup.PoliciesEntry,
    map: true

  field :mod_policy, 5, type: :string, json_name: "modPolicy"
end

defmodule HyperledgerFabric.Protos.Common.ConfigValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :uint64
  field :value, 2, type: :bytes
  field :mod_policy, 3, type: :string, json_name: "modPolicy"
end

defmodule HyperledgerFabric.Protos.Common.ConfigPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :uint64
  field :policy, 2, type: HyperledgerFabric.Protos.Common.Policy
  field :mod_policy, 3, type: :string, json_name: "modPolicy"
end

defmodule HyperledgerFabric.Protos.Common.ConfigSignature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signature_header, 1, type: :bytes, json_name: "signatureHeader"
  field :signature, 2, type: :bytes
end