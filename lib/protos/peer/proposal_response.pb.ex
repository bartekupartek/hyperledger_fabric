defmodule HyperledgerFabric.Protos.Protos.ProposalResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ProposalResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "version",
          extendee: nil,
          number: 1,
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
          number: 2,
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
          name: "response",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.Response",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "response",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 5,
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
          name: "endorsement",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.Endorsement",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endorsement",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "interest",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeInterest",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "interest",
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

  field :version, 1, type: :int32
  field :timestamp, 2, type: Google.Protobuf.Timestamp
  field :response, 4, type: HyperledgerFabric.Protos.Protos.Response
  field :payload, 5, type: :bytes
  field :endorsement, 6, type: HyperledgerFabric.Protos.Protos.Endorsement
  field :interest, 7, type: HyperledgerFabric.Protos.Protos.ChaincodeInterest
end

defmodule HyperledgerFabric.Protos.Protos.Response do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Response",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "status",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "status",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "message",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "message",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 3,
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

  field :status, 1, type: :int32
  field :message, 2, type: :string
  field :payload, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ProposalResponsePayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ProposalResponsePayload",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "proposal_hash",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "proposalHash",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extension",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "extension",
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

  field :proposal_hash, 1, type: :bytes, json_name: "proposalHash"
  field :extension, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.Endorsement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Endorsement",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "endorser",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endorser",
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

  field :endorser, 1, type: :bytes
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInterest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeInterest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincodes",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeCall",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodes",
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

  field :chaincodes, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.ChaincodeCall
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeCall do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeCall",
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
          name: "collection_names",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collectionNames",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "no_private_reads",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "noPrivateReads",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "no_public_writes",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "noPublicWrites",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "key_policies",
          extendee: nil,
          number: 5,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignaturePolicyEnvelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "keyPolicies",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "disregard_namespace_policy",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "disregardNamespacePolicy",
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
  field :collection_names, 2, repeated: true, type: :string, json_name: "collectionNames"
  field :no_private_reads, 3, type: :bool, json_name: "noPrivateReads"
  field :no_public_writes, 4, type: :bool, json_name: "noPublicWrites"

  field :key_policies, 5,
    repeated: true,
    type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope,
    json_name: "keyPolicies"

  field :disregard_namespace_policy, 6, type: :bool, json_name: "disregardNamespacePolicy"
end