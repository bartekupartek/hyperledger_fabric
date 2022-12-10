defmodule HyperledgerFabric.Protos.Protos.SignedChaincodeDeploymentSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SignedChaincodeDeploymentSpec",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincode_deployment_spec",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeDeploymentSpec",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "instantiation_policy",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "instantiationPolicy",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "owner_endorsements",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.Endorsement",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ownerEndorsements",
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

  field :chaincode_deployment_spec, 1, type: :bytes, json_name: "chaincodeDeploymentSpec"
  field :instantiation_policy, 2, type: :bytes, json_name: "instantiationPolicy"

  field :owner_endorsements, 3,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.Endorsement,
    json_name: "ownerEndorsements"
end