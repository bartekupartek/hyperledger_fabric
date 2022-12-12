defmodule HyperledgerFabric.Protos.Orderer.ClusterNodeServiceStepRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:payload, 0)

  field(:node_conrequest, 1,
    type: HyperledgerFabric.Protos.Orderer.NodeConsensusRequest,
    json_name: "nodeConrequest",
    oneof: 0
  )

  field(:node_tranrequest, 2,
    type: HyperledgerFabric.Protos.Orderer.NodeTransactionOrderRequest,
    json_name: "nodeTranrequest",
    oneof: 0
  )

  field(:node_authrequest, 3,
    type: HyperledgerFabric.Protos.Orderer.NodeAuthRequest,
    json_name: "nodeAuthrequest",
    oneof: 0
  )
end

defmodule HyperledgerFabric.Protos.Orderer.ClusterNodeServiceStepResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:payload, 0)

  field(:tranorder_res, 1,
    type: HyperledgerFabric.Protos.Orderer.TransactionOrderResponse,
    json_name: "tranorderRes",
    oneof: 0
  )
end

defmodule HyperledgerFabric.Protos.Orderer.NodeConsensusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:payload, 1, type: :bytes)
  field(:metadata, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Orderer.NodeTransactionOrderRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:last_validation_seq, 1, type: :uint64, json_name: "lastValidationSeq")
  field(:payload, 2, type: HyperledgerFabric.Protos.Common.Envelope)
end

defmodule HyperledgerFabric.Protos.Orderer.TransactionOrderResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:channel, 1, type: :string)
  field(:tx_id, 2, type: :string, json_name: "txId")
  field(:status, 3, type: HyperledgerFabric.Protos.Common.Status, enum: true)
  field(:info, 4, type: :string)
end

defmodule HyperledgerFabric.Protos.Orderer.NodeAuthRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:version, 1, type: :uint32)
  field(:signature, 2, type: :bytes)
  field(:timestamp, 3, type: Google.Protobuf.Timestamp)
  field(:from_id, 4, type: :uint64, json_name: "fromId")
  field(:to_id, 5, type: :uint64, json_name: "toId")
  field(:session_binding, 6, type: :bytes, json_name: "sessionBinding")
  field(:channel, 7, type: :string)
end

defmodule HyperledgerFabric.Protos.Orderer.ClusterNodeService.Service do
  @moduledoc false
  use GRPC.Service, name: "orderer.ClusterNodeService", protoc_gen_elixir_version: "0.11.0"

  rpc(
    :Step,
    stream(HyperledgerFabric.Protos.Orderer.ClusterNodeServiceStepRequest),
    stream(HyperledgerFabric.Protos.Orderer.ClusterNodeServiceStepResponse)
  )
end

defmodule HyperledgerFabric.Protos.Orderer.ClusterNodeService.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Orderer.ClusterNodeService.Service
end
