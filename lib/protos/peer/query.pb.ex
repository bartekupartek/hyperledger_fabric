defmodule HyperledgerFabric.Protos.Protos.ChaincodeQueryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chaincodes, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.ChaincodeInfo
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: :string
  field :path, 3, type: :string
  field :input, 4, type: :string
  field :escc, 5, type: :string
  field :vscc, 6, type: :string
  field :id, 7, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChannelQueryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channels, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.ChannelInfo
end

defmodule HyperledgerFabric.Protos.Protos.ChannelInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId"
end

defmodule HyperledgerFabric.Protos.Protos.JoinBySnapshotStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :in_progress, 1, type: :bool, json_name: "inProgress"
  field :bootstrapping_snapshot_dir, 2, type: :string, json_name: "bootstrappingSnapshotDir"
end