defmodule HyperledgerFabric.Protos.Gateway.EndorseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "EndorseRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactionId",
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
          name: "proposed_transaction",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.SignedProposal",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "proposedTransaction",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "endorsing_organizations",
          extendee: nil,
          number: 4,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endorsingOrganizations",
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

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :channel_id, 2, type: :string, json_name: "channelId"

  field :proposed_transaction, 3,
    type: HyperledgerFabric.Protos.Protos.SignedProposal,
    json_name: "proposedTransaction"

  field :endorsing_organizations, 4,
    repeated: true,
    type: :string,
    json_name: "endorsingOrganizations"
end

defmodule HyperledgerFabric.Protos.Gateway.EndorseResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "EndorseResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "prepared_transaction",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "preparedTransaction",
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

  field :prepared_transaction, 1,
    type: HyperledgerFabric.Protos.Common.Envelope,
    json_name: "preparedTransaction"
end

defmodule HyperledgerFabric.Protos.Gateway.SubmitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SubmitRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactionId",
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
          name: "prepared_transaction",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "preparedTransaction",
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

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :channel_id, 2, type: :string, json_name: "channelId"

  field :prepared_transaction, 3,
    type: HyperledgerFabric.Protos.Common.Envelope,
    json_name: "preparedTransaction"
end

defmodule HyperledgerFabric.Protos.Gateway.SubmitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SubmitResponse",
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

defmodule HyperledgerFabric.Protos.Gateway.SignedCommitStatusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SignedCommitStatusRequest",
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

defmodule HyperledgerFabric.Protos.Gateway.CommitStatusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CommitStatusRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactionId",
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
          name: "identity",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "identity",
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

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :identity, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gateway.CommitStatusResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CommitStatusResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "result",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".protos.TxValidationCode",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "result",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_number",
          extendee: nil,
          number: 2,
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

  field :result, 1, type: HyperledgerFabric.Protos.Protos.TxValidationCode, enum: true
  field :block_number, 2, type: :uint64, json_name: "blockNumber"
end

defmodule HyperledgerFabric.Protos.Gateway.EvaluateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "EvaluateRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactionId",
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
          name: "proposed_transaction",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.SignedProposal",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "proposedTransaction",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "target_organizations",
          extendee: nil,
          number: 4,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "targetOrganizations",
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

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :channel_id, 2, type: :string, json_name: "channelId"

  field :proposed_transaction, 3,
    type: HyperledgerFabric.Protos.Protos.SignedProposal,
    json_name: "proposedTransaction"

  field :target_organizations, 4, repeated: true, type: :string, json_name: "targetOrganizations"
end

defmodule HyperledgerFabric.Protos.Gateway.EvaluateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "EvaluateResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "result",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.Response",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "result",
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

  field :result, 1, type: HyperledgerFabric.Protos.Protos.Response
end

defmodule HyperledgerFabric.Protos.Gateway.SignedChaincodeEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SignedChaincodeEventsRequest",
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

defmodule HyperledgerFabric.Protos.Gateway.ChaincodeEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeEventsRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel_id",
          extendee: nil,
          number: 1,
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
          name: "chaincode_id",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "identity",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "identity",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "start_position",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.SeekPosition",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "startPosition",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "after_transaction_id",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "afterTransactionId",
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

  field :channel_id, 1, type: :string, json_name: "channelId"
  field :chaincode_id, 2, type: :string, json_name: "chaincodeId"
  field :identity, 3, type: :bytes

  field :start_position, 4,
    type: HyperledgerFabric.Protos.Orderer.SeekPosition,
    json_name: "startPosition"

  field :after_transaction_id, 5, type: :string, json_name: "afterTransactionId"
end

defmodule HyperledgerFabric.Protos.Gateway.ChaincodeEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeEventsResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "events",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeEvent",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "events",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_number",
          extendee: nil,
          number: 2,
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

  field :events, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.ChaincodeEvent
  field :block_number, 2, type: :uint64, json_name: "blockNumber"
end

defmodule HyperledgerFabric.Protos.Gateway.ErrorDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ErrorDetail",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "address",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "address",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "msp_id",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mspId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "message",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "message",
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

  field :address, 1, type: :string
  field :msp_id, 2, type: :string, json_name: "mspId"
  field :message, 3, type: :string
end

defmodule HyperledgerFabric.Protos.Gateway.ProposedTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ProposedTransaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactionId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "proposal",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.SignedProposal",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "proposal",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "endorsing_organizations",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endorsingOrganizations",
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

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :proposal, 2, type: HyperledgerFabric.Protos.Protos.SignedProposal

  field :endorsing_organizations, 3,
    repeated: true,
    type: :string,
    json_name: "endorsingOrganizations"
end

defmodule HyperledgerFabric.Protos.Gateway.PreparedTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PreparedTransaction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "transaction_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "transactionId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "envelope",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "envelope",
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

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :envelope, 2, type: HyperledgerFabric.Protos.Common.Envelope
end

defmodule HyperledgerFabric.Protos.Gateway.Gateway.Service do
  @moduledoc false
  use GRPC.Service, name: "gateway.Gateway", protoc_gen_elixir_version: "0.11.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "Gateway",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "Endorse",
          input_type: ".gateway.EndorseRequest",
          output_type: ".gateway.EndorseResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "Submit",
          input_type: ".gateway.SubmitRequest",
          output_type: ".gateway.SubmitResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "CommitStatus",
          input_type: ".gateway.SignedCommitStatusRequest",
          output_type: ".gateway.CommitStatusResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "Evaluate",
          input_type: ".gateway.EvaluateRequest",
          output_type: ".gateway.EvaluateResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "ChaincodeEvents",
          input_type: ".gateway.SignedChaincodeEventsRequest",
          output_type: ".gateway.ChaincodeEventsResponse",
          options: nil,
          client_streaming: false,
          server_streaming: true,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :Endorse,
      HyperledgerFabric.Protos.Gateway.EndorseRequest,
      HyperledgerFabric.Protos.Gateway.EndorseResponse

  rpc :Submit,
      HyperledgerFabric.Protos.Gateway.SubmitRequest,
      HyperledgerFabric.Protos.Gateway.SubmitResponse

  rpc :CommitStatus,
      HyperledgerFabric.Protos.Gateway.SignedCommitStatusRequest,
      HyperledgerFabric.Protos.Gateway.CommitStatusResponse

  rpc :Evaluate,
      HyperledgerFabric.Protos.Gateway.EvaluateRequest,
      HyperledgerFabric.Protos.Gateway.EvaluateResponse

  rpc :ChaincodeEvents,
      HyperledgerFabric.Protos.Gateway.SignedChaincodeEventsRequest,
      stream(HyperledgerFabric.Protos.Gateway.ChaincodeEventsResponse)
end

defmodule HyperledgerFabric.Protos.Gateway.Gateway.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Gateway.Gateway.Service
end