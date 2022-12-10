defmodule HyperledgerFabric.Protos.Orderer.ConsensusType.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "State",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "STATE_NORMAL",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "STATE_MAINTENANCE",
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

  field :STATE_NORMAL, 0
  field :STATE_MAINTENANCE, 1
end

defmodule HyperledgerFabric.Protos.Orderer.ConsensusType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ConsensusType",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "type",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "type",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "state",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".orderer.ConsensusType.State",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "state",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "State",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "STATE_NORMAL",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "STATE_MAINTENANCE",
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

  field :type, 1, type: :string
  field :metadata, 2, type: :bytes
  field :state, 3, type: HyperledgerFabric.Protos.Orderer.ConsensusType.State, enum: true
end

defmodule HyperledgerFabric.Protos.Orderer.BatchSize do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BatchSize",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_message_count",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "maxMessageCount",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "absolute_max_bytes",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "absoluteMaxBytes",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "preferred_max_bytes",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "preferredMaxBytes",
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

  field :max_message_count, 1, type: :uint32, json_name: "maxMessageCount"
  field :absolute_max_bytes, 2, type: :uint32, json_name: "absoluteMaxBytes"
  field :preferred_max_bytes, 3, type: :uint32, json_name: "preferredMaxBytes"
end

defmodule HyperledgerFabric.Protos.Orderer.BatchTimeout do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BatchTimeout",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "timeout",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "timeout",
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

  field :timeout, 1, type: :string
end

defmodule HyperledgerFabric.Protos.Orderer.KafkaBrokers do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KafkaBrokers",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "brokers",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "brokers",
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
        deprecated: true,
        map_entry: nil,
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

  field :brokers, 1, repeated: true, type: :string
end

defmodule HyperledgerFabric.Protos.Orderer.ChannelRestrictions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChannelRestrictions",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_count",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "maxCount",
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

  field :max_count, 1, type: :uint64, json_name: "maxCount"
end