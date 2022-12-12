defmodule HyperledgerFabric.Protos.Orderer.SeekInfo.SeekBehavior do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:BLOCK_UNTIL_READY, 0)
  field(:FAIL_IF_NOT_READY, 1)
end

defmodule HyperledgerFabric.Protos.Orderer.SeekInfo.SeekErrorResponse do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:STRICT, 0)
  field(:BEST_EFFORT, 1)
end

defmodule HyperledgerFabric.Protos.Orderer.SeekInfo.SeekContentType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:BLOCK, 0)
  field(:HEADER_WITH_SIG, 1)
end

defmodule HyperledgerFabric.Protos.Orderer.BroadcastResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:status, 1, type: HyperledgerFabric.Protos.Common.Status, enum: true)
  field(:info, 2, type: :string)
end

defmodule HyperledgerFabric.Protos.Orderer.SeekNewest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule HyperledgerFabric.Protos.Orderer.SeekOldest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule HyperledgerFabric.Protos.Orderer.SeekSpecified do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:number, 1, type: :uint64)
end

defmodule HyperledgerFabric.Protos.Orderer.SeekNextCommit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule HyperledgerFabric.Protos.Orderer.SeekPosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:Type, 0)

  field(:newest, 1, type: HyperledgerFabric.Protos.Orderer.SeekNewest, oneof: 0)
  field(:oldest, 2, type: HyperledgerFabric.Protos.Orderer.SeekOldest, oneof: 0)
  field(:specified, 3, type: HyperledgerFabric.Protos.Orderer.SeekSpecified, oneof: 0)

  field(:next_commit, 4,
    type: HyperledgerFabric.Protos.Orderer.SeekNextCommit,
    json_name: "nextCommit",
    oneof: 0
  )
end

defmodule HyperledgerFabric.Protos.Orderer.SeekInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:start, 1, type: HyperledgerFabric.Protos.Orderer.SeekPosition)
  field(:stop, 2, type: HyperledgerFabric.Protos.Orderer.SeekPosition)
  field(:behavior, 3, type: HyperledgerFabric.Protos.Orderer.SeekInfo.SeekBehavior, enum: true)

  field(:error_response, 4,
    type: HyperledgerFabric.Protos.Orderer.SeekInfo.SeekErrorResponse,
    json_name: "errorResponse",
    enum: true
  )

  field(:content_type, 5,
    type: HyperledgerFabric.Protos.Orderer.SeekInfo.SeekContentType,
    json_name: "contentType",
    enum: true
  )
end

defmodule HyperledgerFabric.Protos.Orderer.DeliverResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:Type, 0)

  field(:status, 1, type: HyperledgerFabric.Protos.Common.Status, enum: true, oneof: 0)
  field(:block, 2, type: HyperledgerFabric.Protos.Common.Block, oneof: 0)
end

defmodule HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Service do
  @moduledoc false
  use GRPC.Service, name: "orderer.AtomicBroadcast", protoc_gen_elixir_version: "0.11.0"

  rpc(
    :Broadcast,
    stream(HyperledgerFabric.Protos.Common.Envelope),
    stream(HyperledgerFabric.Protos.Orderer.BroadcastResponse)
  )

  rpc(
    :Deliver,
    stream(HyperledgerFabric.Protos.Common.Envelope),
    stream(HyperledgerFabric.Protos.Orderer.DeliverResponse)
  )
end

defmodule HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Service
end
