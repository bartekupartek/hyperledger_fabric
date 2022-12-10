defmodule HyperledgerFabric.Protos.Common.MSPPrincipal.Classification do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Classification",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ROLE",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ORGANIZATION_UNIT",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "IDENTITY",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ANONYMITY",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "COMBINED",
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

  field :ROLE, 0
  field :ORGANIZATION_UNIT, 1
  field :IDENTITY, 2
  field :ANONYMITY, 3
  field :COMBINED, 4
end

defmodule HyperledgerFabric.Protos.Common.MSPRole.MSPRoleType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "MSPRoleType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "MEMBER",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ADMIN",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CLIENT",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "PEER",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ORDERER",
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

  field :MEMBER, 0
  field :ADMIN, 1
  field :CLIENT, 2
  field :PEER, 3
  field :ORDERER, 4
end

defmodule HyperledgerFabric.Protos.Common.MSPIdentityAnonymity.MSPIdentityAnonymityType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "MSPIdentityAnonymityType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "NOMINAL",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ANONYMOUS",
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

  field :NOMINAL, 0
  field :ANONYMOUS, 1
end

defmodule HyperledgerFabric.Protos.Common.MSPPrincipal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MSPPrincipal",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "principal_classification",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".common.MSPPrincipal.Classification",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "principalClassification",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "principal",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "principal",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "Classification",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ROLE",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ORGANIZATION_UNIT",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "IDENTITY",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ANONYMITY",
              number: 3,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "COMBINED",
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

  field :principal_classification, 1,
    type: HyperledgerFabric.Protos.Common.MSPPrincipal.Classification,
    json_name: "principalClassification",
    enum: true

  field :principal, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Common.OrganizationUnit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "OrganizationUnit",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "msp_identifier",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mspIdentifier",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "organizational_unit_identifier",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "organizationalUnitIdentifier",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "certifiers_identifier",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "certifiersIdentifier",
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

  field :msp_identifier, 1, type: :string, json_name: "mspIdentifier"

  field :organizational_unit_identifier, 2,
    type: :string,
    json_name: "organizationalUnitIdentifier"

  field :certifiers_identifier, 3, type: :bytes, json_name: "certifiersIdentifier"
end

defmodule HyperledgerFabric.Protos.Common.MSPRole do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MSPRole",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "msp_identifier",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "mspIdentifier",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "role",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".common.MSPRole.MSPRoleType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "role",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "MSPRoleType",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "MEMBER",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ADMIN",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CLIENT",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "PEER",
              number: 3,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ORDERER",
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

  field :msp_identifier, 1, type: :string, json_name: "mspIdentifier"
  field :role, 2, type: HyperledgerFabric.Protos.Common.MSPRole.MSPRoleType, enum: true
end

defmodule HyperledgerFabric.Protos.Common.MSPIdentityAnonymity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MSPIdentityAnonymity",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "anonymity_type",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".common.MSPIdentityAnonymity.MSPIdentityAnonymityType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "anonymityType",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "MSPIdentityAnonymityType",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "NOMINAL",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ANONYMOUS",
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

  field :anonymity_type, 1,
    type: HyperledgerFabric.Protos.Common.MSPIdentityAnonymity.MSPIdentityAnonymityType,
    json_name: "anonymityType",
    enum: true
end

defmodule HyperledgerFabric.Protos.Common.CombinedPrincipal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CombinedPrincipal",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "principals",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".common.MSPPrincipal",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "principals",
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

  field :principals, 1, repeated: true, type: HyperledgerFabric.Protos.Common.MSPPrincipal
end