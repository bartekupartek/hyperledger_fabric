defmodule HyperledgerFabric.Protos.Protos.FilteredBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId"
  field :number, 2, type: :uint64

  field :filtered_transactions, 4,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.FilteredTransaction,
    json_name: "filteredTransactions"
end

defmodule HyperledgerFabric.Protos.Protos.FilteredTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :Data, 0

  field :txid, 1, type: :string
  field :type, 2, type: HyperledgerFabric.Protos.Common.HeaderType, enum: true

  field :tx_validation_code, 3,
    type: HyperledgerFabric.Protos.Protos.TxValidationCode,
    json_name: "txValidationCode",
    enum: true

  field :transaction_actions, 4,
    type: HyperledgerFabric.Protos.Protos.FilteredTransactionActions,
    json_name: "transactionActions",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Protos.FilteredTransactionActions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chaincode_actions, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.FilteredChaincodeAction,
    json_name: "chaincodeActions"
end

defmodule HyperledgerFabric.Protos.Protos.FilteredChaincodeAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chaincode_event, 1,
    type: HyperledgerFabric.Protos.Protos.ChaincodeEvent,
    json_name: "chaincodeEvent"
end

defmodule HyperledgerFabric.Protos.Protos.BlockAndPrivateData.PrivateDataMapEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :uint64
  field :value, 2, type: Rwset.TxPvtReadWriteSet
end

defmodule HyperledgerFabric.Protos.Protos.BlockAndPrivateData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: HyperledgerFabric.Protos.Common.Block

  field :private_data_map, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.BlockAndPrivateData.PrivateDataMapEntry,
    json_name: "privateDataMap",
    map: true
end

defmodule HyperledgerFabric.Protos.Protos.DeliverResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :Type, 0

  field :status, 1, type: HyperledgerFabric.Protos.Common.Status, enum: true, oneof: 0
  field :block, 2, type: HyperledgerFabric.Protos.Common.Block, oneof: 0

  field :filtered_block, 3,
    type: HyperledgerFabric.Protos.Protos.FilteredBlock,
    json_name: "filteredBlock",
    oneof: 0

  field :block_and_private_data, 4,
    type: HyperledgerFabric.Protos.Protos.BlockAndPrivateData,
    json_name: "blockAndPrivateData",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Protos.Deliver.Service do
  @moduledoc false
  use GRPC.Service, name: "protos.Deliver", protoc_gen_elixir_version: "0.11.0"

  rpc :Deliver,
      stream(HyperledgerFabric.Protos.Common.Envelope),
      stream(HyperledgerFabric.Protos.Protos.DeliverResponse)

  rpc :DeliverFiltered,
      stream(HyperledgerFabric.Protos.Common.Envelope),
      stream(HyperledgerFabric.Protos.Protos.DeliverResponse)

  rpc :DeliverWithPrivateData,
      stream(HyperledgerFabric.Protos.Common.Envelope),
      stream(HyperledgerFabric.Protos.Protos.DeliverResponse)
end

defmodule HyperledgerFabric.Protos.Protos.Deliver.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Protos.Deliver.Service
end