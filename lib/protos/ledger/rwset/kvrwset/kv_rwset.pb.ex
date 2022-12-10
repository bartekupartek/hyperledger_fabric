defmodule HyperledgerFabric.Protos.Kvrwset.KVRWSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KVRWSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "reads",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVRead",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "reads",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "range_queries_info",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.RangeQueryInfo",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "rangeQueriesInfo",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "writes",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVWrite",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "writes",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata_writes",
          extendee: nil,
          number: 4,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVMetadataWrite",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "metadataWrites",
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

  field :reads, 1, repeated: true, type: HyperledgerFabric.Protos.Kvrwset.KVRead

  field :range_queries_info, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Kvrwset.RangeQueryInfo,
    json_name: "rangeQueriesInfo"

  field :writes, 3, repeated: true, type: HyperledgerFabric.Protos.Kvrwset.KVWrite

  field :metadata_writes, 4,
    repeated: true,
    type: HyperledgerFabric.Protos.Kvrwset.KVMetadataWrite,
    json_name: "metadataWrites"
end

defmodule HyperledgerFabric.Protos.Kvrwset.HashedRWSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "HashedRWSet",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "hashed_reads",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVReadHash",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "hashedReads",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "hashed_writes",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVWriteHash",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "hashedWrites",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata_writes",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVMetadataWriteHash",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "metadataWrites",
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

  field :hashed_reads, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Kvrwset.KVReadHash,
    json_name: "hashedReads"

  field :hashed_writes, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Kvrwset.KVWriteHash,
    json_name: "hashedWrites"

  field :metadata_writes, 3,
    repeated: true,
    type: HyperledgerFabric.Protos.Kvrwset.KVMetadataWriteHash,
    json_name: "metadataWrites"
end

defmodule HyperledgerFabric.Protos.Kvrwset.KVRead do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KVRead",
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
          name: "version",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.Version",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "version",
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

  field :key, 1, type: :string
  field :version, 2, type: HyperledgerFabric.Protos.Kvrwset.Version
end

defmodule HyperledgerFabric.Protos.Kvrwset.KVWrite do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KVWrite",
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
          name: "is_delete",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "isDelete",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "value",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
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
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :key, 1, type: :string
  field :is_delete, 2, type: :bool, json_name: "isDelete"
  field :value, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Kvrwset.KVMetadataWrite do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KVMetadataWrite",
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
          name: "entries",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVMetadataEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "entries",
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

  field :key, 1, type: :string
  field :entries, 2, repeated: true, type: HyperledgerFabric.Protos.Kvrwset.KVMetadataEntry
end

defmodule HyperledgerFabric.Protos.Kvrwset.KVReadHash do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KVReadHash",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "key_hash",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "keyHash",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "version",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.Version",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "version",
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

  field :key_hash, 1, type: :bytes, json_name: "keyHash"
  field :version, 2, type: HyperledgerFabric.Protos.Kvrwset.Version
end

defmodule HyperledgerFabric.Protos.Kvrwset.KVWriteHash do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KVWriteHash",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "key_hash",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "keyHash",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "is_delete",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "isDelete",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "value_hash",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "valueHash",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "is_purge",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "isPurge",
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

  field :key_hash, 1, type: :bytes, json_name: "keyHash"
  field :is_delete, 2, type: :bool, json_name: "isDelete"
  field :value_hash, 3, type: :bytes, json_name: "valueHash"
  field :is_purge, 4, type: :bool, json_name: "isPurge"
end

defmodule HyperledgerFabric.Protos.Kvrwset.KVMetadataWriteHash do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KVMetadataWriteHash",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "key_hash",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "keyHash",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "entries",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVMetadataEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "entries",
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

  field :key_hash, 1, type: :bytes, json_name: "keyHash"
  field :entries, 2, repeated: true, type: HyperledgerFabric.Protos.Kvrwset.KVMetadataEntry
end

defmodule HyperledgerFabric.Protos.Kvrwset.KVMetadataEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KVMetadataEntry",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "name",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "value",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
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
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :name, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Kvrwset.Version do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Version",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_num",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "blockNum",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tx_num",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "txNum",
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

  field :block_num, 1, type: :uint64, json_name: "blockNum"
  field :tx_num, 2, type: :uint64, json_name: "txNum"
end

defmodule HyperledgerFabric.Protos.Kvrwset.RangeQueryInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RangeQueryInfo",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "start_key",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "startKey",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "end_key",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endKey",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "itr_exhausted",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "itrExhausted",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "raw_reads",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.QueryReads",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "rawReads",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "reads_merkle_hashes",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.QueryReadsMerkleSummary",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "readsMerkleHashes",
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
          name: "reads_info",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :reads_info, 0

  field :start_key, 1, type: :string, json_name: "startKey"
  field :end_key, 2, type: :string, json_name: "endKey"
  field :itr_exhausted, 3, type: :bool, json_name: "itrExhausted"

  field :raw_reads, 4,
    type: HyperledgerFabric.Protos.Kvrwset.QueryReads,
    json_name: "rawReads",
    oneof: 0

  field :reads_merkle_hashes, 5,
    type: HyperledgerFabric.Protos.Kvrwset.QueryReadsMerkleSummary,
    json_name: "readsMerkleHashes",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Kvrwset.QueryReads do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "QueryReads",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "kv_reads",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".kvrwset.KVRead",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "kvReads",
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

  field :kv_reads, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Kvrwset.KVRead,
    json_name: "kvReads"
end

defmodule HyperledgerFabric.Protos.Kvrwset.QueryReadsMerkleSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "QueryReadsMerkleSummary",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_degree",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "maxDegree",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_level",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "maxLevel",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_level_hashes",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "maxLevelHashes",
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

  field :max_degree, 1, type: :uint32, json_name: "maxDegree"
  field :max_level, 2, type: :uint32, json_name: "maxLevel"
  field :max_level_hashes, 3, repeated: true, type: :bytes, json_name: "maxLevelHashes"
end