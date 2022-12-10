defmodule HyperledgerFabric.Protos.Rwset.TxReadWriteSet.DataModel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "DataModel",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "KV",
          number: 0,
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

  field :KV, 0
end

defmodule HyperledgerFabric.Protos.Rwset.TxReadWriteSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TxReadWriteSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "data_model",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".rwset.TxReadWriteSet.DataModel",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dataModel",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "ns_rwset",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".rwset.NsReadWriteSet",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nsRwset",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "DataModel",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "KV",
              number: 0,
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

  field :data_model, 1,
    type: HyperledgerFabric.Protos.Rwset.TxReadWriteSet.DataModel,
    json_name: "dataModel",
    enum: true

  field :ns_rwset, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Rwset.NsReadWriteSet,
    json_name: "nsRwset"
end

defmodule HyperledgerFabric.Protos.Rwset.NsReadWriteSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "NsReadWriteSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "namespace",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "namespace",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "rwset",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "rwset",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "collection_hashed_rwset",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".rwset.CollectionHashedReadWriteSet",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collectionHashedRwset",
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

  field :namespace, 1, type: :string
  field :rwset, 2, type: :bytes

  field :collection_hashed_rwset, 3,
    repeated: true,
    type: HyperledgerFabric.Protos.Rwset.CollectionHashedReadWriteSet,
    json_name: "collectionHashedRwset"
end

defmodule HyperledgerFabric.Protos.Rwset.CollectionHashedReadWriteSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CollectionHashedReadWriteSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "collection_name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collectionName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "hashed_rwset",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "hashedRwset",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pvt_rwset_hash",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pvtRwsetHash",
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

  field :collection_name, 1, type: :string, json_name: "collectionName"
  field :hashed_rwset, 2, type: :bytes, json_name: "hashedRwset"
  field :pvt_rwset_hash, 3, type: :bytes, json_name: "pvtRwsetHash"
end

defmodule HyperledgerFabric.Protos.Rwset.TxPvtReadWriteSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TxPvtReadWriteSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "data_model",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".rwset.TxReadWriteSet.DataModel",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dataModel",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "ns_pvt_rwset",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".rwset.NsPvtReadWriteSet",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nsPvtRwset",
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

  field :data_model, 1,
    type: HyperledgerFabric.Protos.Rwset.TxReadWriteSet.DataModel,
    json_name: "dataModel",
    enum: true

  field :ns_pvt_rwset, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Rwset.NsPvtReadWriteSet,
    json_name: "nsPvtRwset"
end

defmodule HyperledgerFabric.Protos.Rwset.NsPvtReadWriteSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "NsPvtReadWriteSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "namespace",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "namespace",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "collection_pvt_rwset",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".rwset.CollectionPvtReadWriteSet",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collectionPvtRwset",
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

  field :namespace, 1, type: :string

  field :collection_pvt_rwset, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Rwset.CollectionPvtReadWriteSet,
    json_name: "collectionPvtRwset"
end

defmodule HyperledgerFabric.Protos.Rwset.CollectionPvtReadWriteSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CollectionPvtReadWriteSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "collection_name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collectionName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "rwset",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "rwset",
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

  field :collection_name, 1, type: :string, json_name: "collectionName"
  field :rwset, 2, type: :bytes
end