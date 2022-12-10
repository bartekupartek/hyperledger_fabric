defmodule HyperledgerFabric.Protos.Orderer.StepRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :payload, 0

  field :consensus_request, 1,
    type: HyperledgerFabric.Protos.Orderer.ConsensusRequest,
    json_name: "consensusRequest",
    oneof: 0

  field :submit_request, 2,
    type: HyperledgerFabric.Protos.Orderer.SubmitRequest,
    json_name: "submitRequest",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Orderer.StepResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :payload, 0

  field :submit_res, 1,
    type: HyperledgerFabric.Protos.Orderer.SubmitResponse,
    json_name: "submitRes",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Orderer.ConsensusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 1, type: :string
  field :payload, 2, type: :bytes
  field :metadata, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Orderer.SubmitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 1, type: :string
  field :last_validation_seq, 2, type: :uint64, json_name: "lastValidationSeq"
  field :payload, 3, type: HyperledgerFabric.Protos.Common.Envelope
end

defmodule HyperledgerFabric.Protos.Orderer.SubmitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 1, type: :string
  field :status, 2, type: HyperledgerFabric.Protos.Common.Status, enum: true
  field :info, 3, type: :string
end

defmodule HyperledgerFabric.Protos.Orderer.Cluster.Service do
  @moduledoc false
  use GRPC.Service, name: "orderer.Cluster", protoc_gen_elixir_version: "0.11.0"

  rpc :Step,
      stream(HyperledgerFabric.Protos.Orderer.StepRequest),
      stream(HyperledgerFabric.Protos.Orderer.StepResponse)
end

defmodule HyperledgerFabric.Protos.Orderer.Cluster.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Orderer.Cluster.Service
end