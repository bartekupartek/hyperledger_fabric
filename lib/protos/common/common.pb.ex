defmodule HyperledgerFabric.Protos.Common.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Status",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "SUCCESS",
          number: 200,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_REQUEST",
          number: 400,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "FORBIDDEN",
          number: 403,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "NOT_FOUND",
          number: 404,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "REQUEST_ENTITY_TOO_LARGE",
          number: 413,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INTERNAL_SERVER_ERROR",
          number: 500,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "NOT_IMPLEMENTED",
          number: 501,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "SERVICE_UNAVAILABLE",
          number: 503,
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

  field :UNKNOWN, 0
  field :SUCCESS, 200
  field :BAD_REQUEST, 400
  field :FORBIDDEN, 403
  field :NOT_FOUND, 404
  field :REQUEST_ENTITY_TOO_LARGE, 413
  field :INTERNAL_SERVER_ERROR, 500
  field :NOT_IMPLEMENTED, 501
  field :SERVICE_UNAVAILABLE, 503
end

defmodule HyperledgerFabric.Protos.Common.HeaderType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "HeaderType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MESSAGE",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CONFIG",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CONFIG_UPDATE",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ENDORSER_TRANSACTION",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ORDERER_TRANSACTION",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "DELIVER_SEEK_INFO",
          number: 5,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CHAINCODE_PACKAGE",
          number: 6,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [
        %Google.Protobuf.EnumDescriptorProto.EnumReservedRange{
          start: 7,
          end: 7,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumDescriptorProto.EnumReservedRange{
          start: 8,
          end: 8,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumDescriptorProto.EnumReservedRange{
          start: 9,
          end: 9,
          __unknown_fields__: []
        }
      ],
      reserved_name: ["PEER_RESOURCE_UPDATE", "PEER_ADMIN_OPERATION", "TOKEN_TRANSACTION"],
      __unknown_fields__: []
    }
  end

  field :MESSAGE, 0
  field :CONFIG, 1
  field :CONFIG_UPDATE, 2
  field :ENDORSER_TRANSACTION, 3
  field :ORDERER_TRANSACTION, 4
  field :DELIVER_SEEK_INFO, 5
  field :CHAINCODE_PACKAGE, 6
end

defmodule HyperledgerFabric.Protos.Common.BlockMetadataIndex do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "BlockMetadataIndex",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "SIGNATURES",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "LAST_CONFIG",
          number: 1,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: true,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "TRANSACTIONS_FILTER",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ORDERER",
          number: 3,
          options: %Google.Protobuf.EnumValueOptions{
            deprecated: true,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMMIT_HASH",
          number: 4,
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

  field :SIGNATURES, 0
  field :LAST_CONFIG, 1
  field :TRANSACTIONS_FILTER, 2
  field :ORDERER, 3
  field :COMMIT_HASH, 4
end

defmodule HyperledgerFabric.Protos.Common.LastConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "LastConfig",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "index",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "index",
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

  field :index, 1, type: :uint64
end

defmodule HyperledgerFabric.Protos.Common.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Metadata",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "value",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "value",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signatures",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".common.MetadataSignature",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signatures",
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

  field :value, 1, type: :bytes
  field :signatures, 2, repeated: true, type: HyperledgerFabric.Protos.Common.MetadataSignature
end

defmodule HyperledgerFabric.Protos.Common.MetadataSignature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MetadataSignature",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature_header",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signatureHeader",
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
          name: "identifier_header",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "identifierHeader",
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

  field :signature_header, 1, type: :bytes, json_name: "signatureHeader"
  field :signature, 2, type: :bytes
  field :identifier_header, 3, type: :bytes, json_name: "identifierHeader"
end

defmodule HyperledgerFabric.Protos.Common.IdentifierHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "IdentifierHeader",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "identifier",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "identifier",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "nonce",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nonce",
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

  field :identifier, 1, type: :uint32
  field :nonce, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.Header do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Header",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel_header",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "channelHeader",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature_header",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signatureHeader",
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

  field :channel_header, 1, type: :bytes, json_name: "channelHeader"
  field :signature_header, 2, type: :bytes, json_name: "signatureHeader"
end

defmodule HyperledgerFabric.Protos.Common.ChannelHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChannelHeader",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "type",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "type",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "version",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "version",
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
          name: "channel_id",
          extendee: nil,
          number: 4,
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
          name: "tx_id",
          extendee: nil,
          number: 5,
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
          name: "epoch",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "epoch",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extension",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "extension",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tls_cert_hash",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "tlsCertHash",
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

  field :type, 1, type: :int32
  field :version, 2, type: :int32
  field :timestamp, 3, type: Google.Protobuf.Timestamp
  field :channel_id, 4, type: :string, json_name: "channelId"
  field :tx_id, 5, type: :string, json_name: "txId"
  field :epoch, 6, type: :uint64
  field :extension, 7, type: :bytes
  field :tls_cert_hash, 8, type: :bytes, json_name: "tlsCertHash"
end

defmodule HyperledgerFabric.Protos.Common.SignatureHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SignatureHeader",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "creator",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "creator",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "nonce",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nonce",
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

  field :creator, 1, type: :bytes
  field :nonce, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.Payload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Payload",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "header",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.Header",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "header",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "data",
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

  field :header, 1, type: HyperledgerFabric.Protos.Common.Header
  field :data, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.Envelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Envelope",
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

  field :payload, 1, type: :bytes
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.Block do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Block",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "header",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.BlockHeader",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "header",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.BlockData",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "data",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.BlockMetadata",
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

  field :header, 1, type: HyperledgerFabric.Protos.Common.BlockHeader
  field :data, 2, type: HyperledgerFabric.Protos.Common.BlockData
  field :metadata, 3, type: HyperledgerFabric.Protos.Common.BlockMetadata
end

defmodule HyperledgerFabric.Protos.Common.BlockHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BlockHeader",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "previous_hash",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "previousHash",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data_hash",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dataHash",
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
  field :previous_hash, 2, type: :bytes, json_name: "previousHash"
  field :data_hash, 3, type: :bytes, json_name: "dataHash"
end

defmodule HyperledgerFabric.Protos.Common.BlockData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BlockData",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "data",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "data",
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

  field :data, 1, repeated: true, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.BlockMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BlockMetadata",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
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

  field :metadata, 1, repeated: true, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.OrdererBlockMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "OrdererBlockMetadata",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "last_config",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.LastConfig",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "lastConfig",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "consenter_metadata",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "consenterMetadata",
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

  field :last_config, 1, type: HyperledgerFabric.Protos.Common.LastConfig, json_name: "lastConfig"
  field :consenter_metadata, 2, type: :bytes, json_name: "consenterMetadata"
end