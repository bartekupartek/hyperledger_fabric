defmodule HyperledgerFabric.Protos.Protos.FilteredBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FilteredBlock",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "channelId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "number",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "number",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "filtered_transactions",
          extendee: nil,
          number: 4,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.FilteredTransaction",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "filteredTransactions",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

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

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FilteredTransaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "txid",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "txid",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "type",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".common.HeaderType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "type",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tx_validation_code",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".protos.TxValidationCode",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "txValidationCode",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction_actions",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.FilteredTransactionActions",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "transactionActions",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{name: "Data", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

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

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FilteredTransactionActions",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincode_actions",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.FilteredChaincodeAction",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeActions",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :chaincode_actions, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.FilteredChaincodeAction,
    json_name: "chaincodeActions"
end

defmodule HyperledgerFabric.Protos.Protos.FilteredChaincodeAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FilteredChaincodeAction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincode_event",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeEvent",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeEvent",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :chaincode_event, 1,
    type: HyperledgerFabric.Protos.Protos.ChaincodeEvent,
    json_name: "chaincodeEvent"
end

defmodule HyperledgerFabric.Protos.Protos.BlockAndPrivateData.PrivateDataMapEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PrivateDataMapEntry",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "key",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "key",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "value",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".rwset.TxPvtReadWriteSet",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "value",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: %Google.Protobuf.MessageOptions{
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        deprecated: false,
        map_entry: true,
        uninterpreted_option: [],
        __pb_extensions__: %{},
        __unknown_fields__: []
      },
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :key, 1, type: :uint64
  field :value, 2, type: Rwset.TxPvtReadWriteSet
end

defmodule HyperledgerFabric.Protos.Protos.BlockAndPrivateData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BlockAndPrivateData",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "block",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.Block",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "block",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "private_data_map",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.BlockAndPrivateData.PrivateDataMapEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "privateDataMap",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "PrivateDataMapEntry",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "key",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_UINT64,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "key",
              proto3_optional: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "value",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".rwset.TxPvtReadWriteSet",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "value",
              proto3_optional: nil,
              __unknown_fields__: []
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: %Google.Protobuf.MessageOptions{
            message_set_wire_format: false,
            no_standard_descriptor_accessor: false,
            deprecated: false,
            map_entry: true,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

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

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DeliverResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "status",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".common.Status",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "status",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "block",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.Block",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "block",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "filtered_block",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.FilteredBlock",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "filteredBlock",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_and_private_data",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.BlockAndPrivateData",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "blockAndPrivateData",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{name: "Type", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

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

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "Deliver",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "Deliver",
          input_type: ".common.Envelope",
          output_type: ".protos.DeliverResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          client_streaming: true,
          server_streaming: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "DeliverFiltered",
          input_type: ".common.Envelope",
          output_type: ".protos.DeliverResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          client_streaming: true,
          server_streaming: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "DeliverWithPrivateData",
          input_type: ".common.Envelope",
          output_type: ".protos.DeliverResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          client_streaming: true,
          server_streaming: true,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

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