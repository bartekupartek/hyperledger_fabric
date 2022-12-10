defmodule HyperledgerFabric.Protos.Transientstore.TxPvtReadWriteSetWithConfigInfo.CollectionConfigsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CollectionConfigsEntry",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "key",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
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
          type_name: ".protos.CollectionConfigPackage",
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

  field :key, 1, type: :string
  field :value, 2, type: HyperledgerFabric.Protos.Protos.CollectionConfigPackage
end

defmodule HyperledgerFabric.Protos.Transientstore.TxPvtReadWriteSetWithConfigInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TxPvtReadWriteSetWithConfigInfo",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "endorsed_at",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endorsedAt",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pvt_rwset",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".rwset.TxPvtReadWriteSet",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pvtRwset",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "collection_configs",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".transientstore.TxPvtReadWriteSetWithConfigInfo.CollectionConfigsEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collectionConfigs",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "CollectionConfigsEntry",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "key",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
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
              type_name: ".protos.CollectionConfigPackage",
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

  field :endorsed_at, 1, type: :uint64, json_name: "endorsedAt"
  field :pvt_rwset, 2, type: Rwset.TxPvtReadWriteSet, json_name: "pvtRwset"

  field :collection_configs, 3,
    repeated: true,
    type:
      HyperledgerFabric.Protos.Transientstore.TxPvtReadWriteSetWithConfigInfo.CollectionConfigsEntry,
    json_name: "collectionConfigs",
    map: true
end