defmodule HyperledgerFabric.Protos.Protos.TxValidationCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "TxValidationCode",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "VALID",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "NIL_ENVELOPE",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_PAYLOAD",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_COMMON_HEADER",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_CREATOR_SIGNATURE",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_ENDORSER_TRANSACTION",
          number: 5,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_CONFIG_TRANSACTION",
          number: 6,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNSUPPORTED_TX_PAYLOAD",
          number: 7,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_PROPOSAL_TXID",
          number: 8,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "DUPLICATE_TXID",
          number: 9,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ENDORSEMENT_POLICY_FAILURE",
          number: 10,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MVCC_READ_CONFLICT",
          number: 11,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PHANTOM_READ_CONFLICT",
          number: 12,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNKNOWN_TX_TYPE",
          number: 13,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "TARGET_CHAIN_NOT_FOUND",
          number: 14,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MARSHAL_TX_ERROR",
          number: 15,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "NIL_TXACTION",
          number: 16,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "EXPIRED_CHAINCODE",
          number: 17,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CHAINCODE_VERSION_CONFLICT",
          number: 18,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_HEADER_EXTENSION",
          number: 19,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_CHANNEL_HEADER",
          number: 20,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_RESPONSE_PAYLOAD",
          number: 21,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BAD_RWSET",
          number: 22,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ILLEGAL_WRITESET",
          number: 23,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_WRITESET",
          number: 24,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_CHAINCODE",
          number: 25,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "NOT_VALIDATED",
          number: 254,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "INVALID_OTHER_REASON",
          number: 255,
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

  field :VALID, 0
  field :NIL_ENVELOPE, 1
  field :BAD_PAYLOAD, 2
  field :BAD_COMMON_HEADER, 3
  field :BAD_CREATOR_SIGNATURE, 4
  field :INVALID_ENDORSER_TRANSACTION, 5
  field :INVALID_CONFIG_TRANSACTION, 6
  field :UNSUPPORTED_TX_PAYLOAD, 7
  field :BAD_PROPOSAL_TXID, 8
  field :DUPLICATE_TXID, 9
  field :ENDORSEMENT_POLICY_FAILURE, 10
  field :MVCC_READ_CONFLICT, 11
  field :PHANTOM_READ_CONFLICT, 12
  field :UNKNOWN_TX_TYPE, 13
  field :TARGET_CHAIN_NOT_FOUND, 14
  field :MARSHAL_TX_ERROR, 15
  field :NIL_TXACTION, 16
  field :EXPIRED_CHAINCODE, 17
  field :CHAINCODE_VERSION_CONFLICT, 18
  field :BAD_HEADER_EXTENSION, 19
  field :BAD_CHANNEL_HEADER, 20
  field :BAD_RESPONSE_PAYLOAD, 21
  field :BAD_RWSET, 22
  field :ILLEGAL_WRITESET, 23
  field :INVALID_WRITESET, 24
  field :INVALID_CHAINCODE, 25
  field :NOT_VALIDATED, 254
  field :INVALID_OTHER_REASON, 255
end

defmodule HyperledgerFabric.Protos.Protos.MetaDataKeys do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "MetaDataKeys",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "VALIDATION_PARAMETER",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "VALIDATION_PARAMETER_V2",
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

  field :VALIDATION_PARAMETER, 0
  field :VALIDATION_PARAMETER_V2, 1
end

defmodule HyperledgerFabric.Protos.Protos.ProcessedTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ProcessedTransaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transactionEnvelope",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactionEnvelope",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "validationCode",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "validationCode",
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

  field :transactionEnvelope, 1, type: HyperledgerFabric.Protos.Common.Envelope
  field :validationCode, 2, type: :int32
end

defmodule HyperledgerFabric.Protos.Protos.Transaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Transaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "actions",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.TransactionAction",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "actions",
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

  field :actions, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.TransactionAction
end

defmodule HyperledgerFabric.Protos.Protos.TransactionAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TransactionAction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "header",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "header",
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

  field :header, 1, type: :bytes
  field :payload, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeActionPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeActionPayload",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincode_proposal_payload",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeProposalPayload",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "action",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeEndorsedAction",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "action",
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

  field :chaincode_proposal_payload, 1, type: :bytes, json_name: "chaincodeProposalPayload"
  field :action, 2, type: HyperledgerFabric.Protos.Protos.ChaincodeEndorsedAction
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeEndorsedAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeEndorsedAction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "proposal_response_payload",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "proposalResponsePayload",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "endorsements",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.Endorsement",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endorsements",
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

  field :proposal_response_payload, 1, type: :bytes, json_name: "proposalResponsePayload"
  field :endorsements, 2, repeated: true, type: HyperledgerFabric.Protos.Protos.Endorsement
end