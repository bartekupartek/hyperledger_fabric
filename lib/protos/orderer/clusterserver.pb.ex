defmodule HyperledgerFabric.Protos.Orderer.ClusterNodeServiceStepRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ClusterNodeServiceStepRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "node_conrequest",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.NodeConsensusRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "nodeConrequest",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "node_tranrequest",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.NodeTransactionOrderRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "nodeTranrequest",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "node_authrequest",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.NodeAuthRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "nodeAuthrequest",
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
        %Google.Protobuf.OneofDescriptorProto{
          name: "payload",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :payload, 0

  field :node_conrequest, 1,
    type: HyperledgerFabric.Protos.Orderer.NodeConsensusRequest,
    json_name: "nodeConrequest",
    oneof: 0

  field :node_tranrequest, 2,
    type: HyperledgerFabric.Protos.Orderer.NodeTransactionOrderRequest,
    json_name: "nodeTranrequest",
    oneof: 0

  field :node_authrequest, 3,
    type: HyperledgerFabric.Protos.Orderer.NodeAuthRequest,
    json_name: "nodeAuthrequest",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Orderer.ClusterNodeServiceStepResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ClusterNodeServiceStepResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "tranorder_res",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.TransactionOrderResponse",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "tranorderRes",
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
        %Google.Protobuf.OneofDescriptorProto{
          name: "payload",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :payload, 0

  field :tranorder_res, 1,
    type: HyperledgerFabric.Protos.Orderer.TransactionOrderResponse,
    json_name: "tranorderRes",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Orderer.NodeConsensusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "NodeConsensusRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payload",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "metadata",
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

  field :payload, 1, type: :bytes
  field :metadata, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Orderer.NodeTransactionOrderRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "NodeTransactionOrderRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "last_validation_seq",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "lastValidationSeq",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payload",
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

  field :last_validation_seq, 1, type: :uint64, json_name: "lastValidationSeq"
  field :payload, 2, type: HyperledgerFabric.Protos.Common.Envelope
end

defmodule HyperledgerFabric.Protos.Orderer.TransactionOrderResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TransactionOrderResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "channel",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tx_id",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "txId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "status",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".common.Status",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "status",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "info",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "info",
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

  field :channel, 1, type: :string
  field :tx_id, 2, type: :string, json_name: "txId"
  field :status, 3, type: HyperledgerFabric.Protos.Common.Status, enum: true
  field :info, 4, type: :string
end

defmodule HyperledgerFabric.Protos.Orderer.NodeAuthRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "NodeAuthRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "version",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "version",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signature",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "timestamp",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "timestamp",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "from_id",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "fromId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "to_id",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "toId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "session_binding",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "sessionBinding",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "channel",
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

  field :version, 1, type: :uint32
  field :signature, 2, type: :bytes
  field :timestamp, 3, type: Google.Protobuf.Timestamp
  field :from_id, 4, type: :uint64, json_name: "fromId"
  field :to_id, 5, type: :uint64, json_name: "toId"
  field :session_binding, 6, type: :bytes, json_name: "sessionBinding"
  field :channel, 7, type: :string
end

defmodule HyperledgerFabric.Protos.Orderer.ClusterNodeService.Service do
  @moduledoc false
  use GRPC.Service, name: "orderer.ClusterNodeService", protoc_gen_elixir_version: "0.11.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "ClusterNodeService",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "Step",
          input_type: ".orderer.ClusterNodeServiceStepRequest",
          output_type: ".orderer.ClusterNodeServiceStepResponse",
          options: nil,
          client_streaming: true,
          server_streaming: true,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :Step,
      stream(HyperledgerFabric.Protos.Orderer.ClusterNodeServiceStepRequest),
      stream(HyperledgerFabric.Protos.Orderer.ClusterNodeServiceStepResponse)
end

defmodule HyperledgerFabric.Protos.Orderer.ClusterNodeService.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Orderer.ClusterNodeService.Service
end