defmodule HyperledgerFabric.Protos.Common.Policy.PolicyType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "PolicyType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNKNOWN",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "SIGNATURE",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MSP",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "IMPLICIT_META",
          number: 3,
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
  field :SIGNATURE, 1
  field :MSP, 2
  field :IMPLICIT_META, 3
end

defmodule HyperledgerFabric.Protos.Common.ImplicitMetaPolicy.Rule do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Rule",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ANY",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ALL",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MAJORITY",
          number: 2,
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

  field :ANY, 0
  field :ALL, 1
  field :MAJORITY, 2
end

defmodule HyperledgerFabric.Protos.Common.Policy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Policy",
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
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "PolicyType",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "UNKNOWN",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "SIGNATURE",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MSP",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "IMPLICIT_META",
              number: 3,
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

  field :type, 1, type: :int32
  field :value, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SignaturePolicyEnvelope",
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
          name: "rule",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignaturePolicy",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "rule",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "identities",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".common.MSPPrincipal",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "identities",
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
  field :rule, 2, type: HyperledgerFabric.Protos.Common.SignaturePolicy
  field :identities, 3, repeated: true, type: HyperledgerFabric.Protos.Common.MSPPrincipal
end

defmodule HyperledgerFabric.Protos.Common.SignaturePolicy.NOutOf do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "NOutOf",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "n",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "n",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "rules",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignaturePolicy",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "rules",
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

  field :n, 1, type: :int32
  field :rules, 2, repeated: true, type: HyperledgerFabric.Protos.Common.SignaturePolicy
end

defmodule HyperledgerFabric.Protos.Common.SignaturePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SignaturePolicy",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "signed_by",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "signedBy",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "n_out_of",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignaturePolicy.NOutOf",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "nOutOf",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "NOutOf",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "n",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_INT32,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "n",
              proto3_optional: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "rules",
              extendee: nil,
              number: 2,
              label: :LABEL_REPEATED,
              type: :TYPE_MESSAGE,
              type_name: ".common.SignaturePolicy",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "rules",
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
      ],
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

  field :signed_by, 1, type: :int32, json_name: "signedBy", oneof: 0

  field :n_out_of, 2,
    type: HyperledgerFabric.Protos.Common.SignaturePolicy.NOutOf,
    json_name: "nOutOf",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Common.ImplicitMetaPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ImplicitMetaPolicy",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "sub_policy",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "subPolicy",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "rule",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".common.ImplicitMetaPolicy.Rule",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "rule",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "Rule",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ANY",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ALL",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MAJORITY",
              number: 2,
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

  field :sub_policy, 1, type: :string, json_name: "subPolicy"
  field :rule, 2, type: HyperledgerFabric.Protos.Common.ImplicitMetaPolicy.Rule, enum: true
end

defmodule HyperledgerFabric.Protos.Common.ApplicationPolicy do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
      options: %Google.Protobuf.MessageOptions{
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        deprecated: true,
        map_entry: nil,
        uninterpreted_option: [],
        __pb_extensions__: %{},
        __unknown_fields__: []
      },
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