defmodule HyperledgerFabric.Protos.Orderer.StepRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StepRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "consensus_request",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.ConsensusRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "consensusRequest",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "submit_request",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SubmitRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "submitRequest",
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

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StepResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "submit_res",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SubmitResponse",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "submitRes",
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

  field :submit_res, 1,
    type: HyperledgerFabric.Protos.Orderer.SubmitResponse,
    json_name: "submitRes",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Orderer.ConsensusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ConsensusRequest",
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
          name: "payload",
          extendee: nil,
          number: 2,
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
          number: 3,
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

  field :channel, 1, type: :string
  field :payload, 2, type: :bytes
  field :metadata, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Orderer.SubmitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SubmitRequest",
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
          name: "last_validation_seq",
          extendee: nil,
          number: 2,
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
          number: 3,
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

  field :channel, 1, type: :string
  field :last_validation_seq, 2, type: :uint64, json_name: "lastValidationSeq"
  field :payload, 3, type: HyperledgerFabric.Protos.Common.Envelope
end

defmodule HyperledgerFabric.Protos.Orderer.SubmitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SubmitResponse",
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
          name: "status",
          extendee: nil,
          number: 2,
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
          number: 3,
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
  field :status, 2, type: HyperledgerFabric.Protos.Common.Status, enum: true
  field :info, 3, type: :string
end

defmodule HyperledgerFabric.Protos.Orderer.Cluster.Service do
  @moduledoc false
  use GRPC.Service, name: "orderer.Cluster", protoc_gen_elixir_version: "0.11.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "Cluster",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "Step",
          input_type: ".orderer.StepRequest",
          output_type: ".orderer.StepResponse",
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
      stream(HyperledgerFabric.Protos.Orderer.StepRequest),
      stream(HyperledgerFabric.Protos.Orderer.StepResponse)
end

defmodule HyperledgerFabric.Protos.Orderer.Cluster.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Orderer.Cluster.Service
end