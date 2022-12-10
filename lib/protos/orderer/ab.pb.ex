defmodule HyperledgerFabric.Protos.Orderer.SeekInfo.SeekBehavior do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "SeekBehavior",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BLOCK_UNTIL_READY",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FAIL_IF_NOT_READY",
          number: 1,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :BLOCK_UNTIL_READY, 0
  field :FAIL_IF_NOT_READY, 1
end

defmodule HyperledgerFabric.Protos.Orderer.SeekInfo.SeekErrorResponse do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "SeekErrorResponse",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "STRICT",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BEST_EFFORT",
          number: 1,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :STRICT, 0
  field :BEST_EFFORT, 1
end

defmodule HyperledgerFabric.Protos.Orderer.SeekInfo.SeekContentType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "SeekContentType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BLOCK",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "HEADER_WITH_SIG",
          number: 1,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :BLOCK, 0
  field :HEADER_WITH_SIG, 1
end

defmodule HyperledgerFabric.Protos.Orderer.BroadcastResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BroadcastResponse",
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
          oneof_index: nil,
          json_name: "status",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "info",
          extendee: nil,
          number: 2,
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

  field :status, 1, type: HyperledgerFabric.Protos.Common.Status, enum: true
  field :info, 2, type: :string
end

defmodule HyperledgerFabric.Protos.Orderer.SeekNewest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SeekNewest",
      field: [],
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
end

defmodule HyperledgerFabric.Protos.Orderer.SeekOldest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SeekOldest",
      field: [],
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
end

defmodule HyperledgerFabric.Protos.Orderer.SeekSpecified do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SeekSpecified",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "number",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "number",
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

  field :number, 1, type: :uint64
end

defmodule HyperledgerFabric.Protos.Orderer.SeekNextCommit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SeekNextCommit",
      field: [],
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
end

defmodule HyperledgerFabric.Protos.Orderer.SeekPosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SeekPosition",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "newest",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SeekNewest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "newest",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "oldest",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SeekOldest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "oldest",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "specified",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SeekSpecified",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "specified",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "next_commit",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SeekNextCommit",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "nextCommit",
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

  field :newest, 1, type: HyperledgerFabric.Protos.Orderer.SeekNewest, oneof: 0
  field :oldest, 2, type: HyperledgerFabric.Protos.Orderer.SeekOldest, oneof: 0
  field :specified, 3, type: HyperledgerFabric.Protos.Orderer.SeekSpecified, oneof: 0

  field :next_commit, 4,
    type: HyperledgerFabric.Protos.Orderer.SeekNextCommit,
    json_name: "nextCommit",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Orderer.SeekInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SeekInfo",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "start",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SeekPosition",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "start",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stop",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SeekPosition",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "stop",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "behavior",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".orderer.SeekInfo.SeekBehavior",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "behavior",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "error_response",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".orderer.SeekInfo.SeekErrorResponse",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "errorResponse",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "content_type",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".orderer.SeekInfo.SeekContentType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "contentType",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "SeekBehavior",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "BLOCK_UNTIL_READY",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "FAIL_IF_NOT_READY",
              number: 1,
              options: nil,
              __unknown_fields__: []
            }
          ],
          options: nil,
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumDescriptorProto{
          name: "SeekErrorResponse",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "STRICT",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "BEST_EFFORT",
              number: 1,
              options: nil,
              __unknown_fields__: []
            }
          ],
          options: nil,
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumDescriptorProto{
          name: "SeekContentType",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "BLOCK",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "HEADER_WITH_SIG",
              number: 1,
              options: nil,
              __unknown_fields__: []
            }
          ],
          options: nil,
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :start, 1, type: HyperledgerFabric.Protos.Orderer.SeekPosition
  field :stop, 2, type: HyperledgerFabric.Protos.Orderer.SeekPosition
  field :behavior, 3, type: HyperledgerFabric.Protos.Orderer.SeekInfo.SeekBehavior, enum: true

  field :error_response, 4,
    type: HyperledgerFabric.Protos.Orderer.SeekInfo.SeekErrorResponse,
    json_name: "errorResponse",
    enum: true

  field :content_type, 5,
    type: HyperledgerFabric.Protos.Orderer.SeekInfo.SeekContentType,
    json_name: "contentType",
    enum: true
end

defmodule HyperledgerFabric.Protos.Orderer.DeliverResponse do
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
end

defmodule HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Service do
  @moduledoc false
  use GRPC.Service, name: "orderer.AtomicBroadcast", protoc_gen_elixir_version: "0.11.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "AtomicBroadcast",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "Broadcast",
          input_type: ".common.Envelope",
          output_type: ".orderer.BroadcastResponse",
          options: nil,
          client_streaming: true,
          server_streaming: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "Deliver",
          input_type: ".common.Envelope",
          output_type: ".orderer.DeliverResponse",
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

  rpc :Broadcast,
      stream(HyperledgerFabric.Protos.Common.Envelope),
      stream(HyperledgerFabric.Protos.Orderer.BroadcastResponse)

  rpc :Deliver,
      stream(HyperledgerFabric.Protos.Common.Envelope),
      stream(HyperledgerFabric.Protos.Orderer.DeliverResponse)
end

defmodule HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Service
end