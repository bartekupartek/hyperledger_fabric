defmodule HyperledgerFabric.Protos.Common.BlockchainInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :height, 1, type: :uint64
  field :currentBlockHash, 2, type: :bytes
  field :previousBlockHash, 3, type: :bytes

  field :bootstrappingSnapshotInfo, 4,
    type: HyperledgerFabric.Protos.Common.BootstrappingSnapshotInfo
end

defmodule HyperledgerFabric.Protos.Common.BootstrappingSnapshotInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lastBlockInSnapshot, 1, type: :uint64
end