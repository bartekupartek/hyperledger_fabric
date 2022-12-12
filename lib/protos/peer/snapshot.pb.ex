defmodule HyperledgerFabric.Protos.Protos.SnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:signature_header, 1,
    type: HyperledgerFabric.Protos.Common.SignatureHeader,
    json_name: "signatureHeader"
  )

  field(:channel_id, 2, type: :string, json_name: "channelId")
  field(:block_number, 3, type: :uint64, json_name: "blockNumber")
end

defmodule HyperledgerFabric.Protos.Protos.SnapshotQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:signature_header, 1,
    type: HyperledgerFabric.Protos.Common.SignatureHeader,
    json_name: "signatureHeader"
  )

  field(:channel_id, 2, type: :string, json_name: "channelId")
end

defmodule HyperledgerFabric.Protos.Protos.SignedSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:request, 1, type: :bytes)
  field(:signature, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.QueryPendingSnapshotsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:block_numbers, 1, repeated: true, type: :uint64, json_name: "blockNumbers")
end

defmodule HyperledgerFabric.Protos.Protos.Snapshot.Service do
  @moduledoc false
  use GRPC.Service, name: "protos.Snapshot", protoc_gen_elixir_version: "0.11.0"

  rpc(:Generate, HyperledgerFabric.Protos.Protos.SignedSnapshotRequest, Google.Protobuf.Empty)

  rpc(:Cancel, HyperledgerFabric.Protos.Protos.SignedSnapshotRequest, Google.Protobuf.Empty)

  rpc(
    :QueryPendings,
    HyperledgerFabric.Protos.Protos.SignedSnapshotRequest,
    HyperledgerFabric.Protos.Protos.QueryPendingSnapshotsResponse
  )
end

defmodule HyperledgerFabric.Protos.Protos.Snapshot.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Protos.Snapshot.Service
end
