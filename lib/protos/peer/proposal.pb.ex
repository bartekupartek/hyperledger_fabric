defmodule HyperledgerFabric.Protos.Protos.SignedProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SignedProposal",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "proposal_bytes",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "proposalBytes",
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

  field :proposal_bytes, 1, type: :bytes, json_name: "proposalBytes"
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.Proposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Proposal",
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "extension",
          extendee: nil,
          number: 3,
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

  field :header, 1, type: :bytes
  field :payload, 2, type: :bytes
  field :extension, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeHeaderExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeHeaderExtension",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincode_id",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeID",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeId",
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
      reserved_range: [
        %Google.Protobuf.DescriptorProto.ReservedRange{start: 1, end: 2, __unknown_fields__: []}
      ],
      reserved_name: ["payload_visbility"],
      __unknown_fields__: []
    }
  end

  field :chaincode_id, 2,
    type: HyperledgerFabric.Protos.Protos.ChaincodeID,
    json_name: "chaincodeId"
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload.TransientMapEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TransientMapEntry",
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
  field :value, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeProposalPayload",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "input",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "input",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "TransientMap",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeProposalPayload.TransientMapEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "TransientMap",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "TransientMapEntry",
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

  field :input, 1, type: :bytes

  field :TransientMap, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload.TransientMapEntry,
    map: true
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeAction",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "results",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "results",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "events",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "events",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "response",
          extendee: nil,
          number: 3,
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
          name: "chaincode_id",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeID",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeId",
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
      reserved_range: [
        %Google.Protobuf.DescriptorProto.ReservedRange{start: 5, end: 6, __unknown_fields__: []}
      ],
      reserved_name: ["token_operations"],
      __unknown_fields__: []
    }
  end

  field :results, 1, type: :bytes
  field :events, 2, type: :bytes
  field :response, 3, type: HyperledgerFabric.Protos.Protos.Response

  field :chaincode_id, 4,
    type: HyperledgerFabric.Protos.Protos.ChaincodeID,
    json_name: "chaincodeId"
end