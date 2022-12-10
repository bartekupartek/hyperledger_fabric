defmodule HyperledgerFabric.Protos.Protos.SnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SnapshotRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature_header",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignatureHeader",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signatureHeader",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel_id",
          extendee: nil,
          number: 2,
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
          name: "block_number",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "blockNumber",
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

  field :signature_header, 1,
    type: HyperledgerFabric.Protos.Common.SignatureHeader,
    json_name: "signatureHeader"

  field :channel_id, 2, type: :string, json_name: "channelId"
  field :block_number, 3, type: :uint64, json_name: "blockNumber"
end

defmodule HyperledgerFabric.Protos.Protos.SnapshotQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SnapshotQuery",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature_header",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignatureHeader",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signatureHeader",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel_id",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "channelId",
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

  field :signature_header, 1,
    type: HyperledgerFabric.Protos.Common.SignatureHeader,
    json_name: "signatureHeader"

  field :channel_id, 2, type: :string, json_name: "channelId"
end

defmodule HyperledgerFabric.Protos.Protos.SignedSnapshotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SignedSnapshotRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "request",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "request",
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

  field :request, 1, type: :bytes
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.QueryPendingSnapshotsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "QueryPendingSnapshotsResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_numbers",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "blockNumbers",
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

  field :block_numbers, 1, repeated: true, type: :uint64, json_name: "blockNumbers"
end

defmodule HyperledgerFabric.Protos.Protos.Snapshot.Service do
  @moduledoc false
  use GRPC.Service, name: "protos.Snapshot", protoc_gen_elixir_version: "0.11.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "Snapshot",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "Generate",
          input_type: ".protos.SignedSnapshotRequest",
          output_type: ".google.protobuf.Empty",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "Cancel",
          input_type: ".protos.SignedSnapshotRequest",
          output_type: ".google.protobuf.Empty",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "QueryPendings",
          input_type: ".protos.SignedSnapshotRequest",
          output_type: ".protos.QueryPendingSnapshotsResponse",
          options: %Google.Protobuf.MethodOptions{
            deprecated: false,
            idempotency_level: :IDEMPOTENCY_UNKNOWN,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :Generate, HyperledgerFabric.Protos.Protos.SignedSnapshotRequest, Google.Protobuf.Empty

  rpc :Cancel, HyperledgerFabric.Protos.Protos.SignedSnapshotRequest, Google.Protobuf.Empty

  rpc :QueryPendings,
      HyperledgerFabric.Protos.Protos.SignedSnapshotRequest,
      HyperledgerFabric.Protos.Protos.QueryPendingSnapshotsResponse
end

defmodule HyperledgerFabric.Protos.Protos.Snapshot.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Protos.Snapshot.Service
end