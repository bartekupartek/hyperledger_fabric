defmodule HyperledgerFabric.Protos.Protos.ApplicationPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ApplicationPolicy",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature_policy",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignaturePolicyEnvelope",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "signaturePolicy",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel_config_policy_reference",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "channelConfigPolicyReference",
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
        %Google.Protobuf.OneofDescriptorProto{name: "Type", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :Type, 0

  field :signature_policy, 1,
    type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope,
    json_name: "signaturePolicy",
    oneof: 0

  field :channel_config_policy_reference, 2,
    type: :string,
    json_name: "channelConfigPolicyReference",
    oneof: 0
end