defmodule HyperledgerFabric.Protos.Protos.ChaincodeSpec.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Type",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNDEFINED",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "GOLANG",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "NODE",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CAR",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "JAVA",
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

  field :UNDEFINED, 0
  field :GOLANG, 1
  field :NODE, 2
  field :CAR, 3
  field :JAVA, 4
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeID",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "path",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "path",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 2,
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
          name: "version",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
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

  field :path, 1, type: :string
  field :name, 2, type: :string
  field :version, 3, type: :string
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInput.DecorationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DecorationsEntry",
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

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeInput",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "args",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "args",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "decorations",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeInput.DecorationsEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "decorations",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "is_init",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "isInit",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "DecorationsEntry",
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

  field :args, 1, repeated: true, type: :bytes

  field :decorations, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.ChaincodeInput.DecorationsEntry,
    map: true

  field :is_init, 3, type: :bool, json_name: "isInit"
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeSpec",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "type",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".protos.ChaincodeSpec.Type",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "type",
          proto3_optional: nil,
          __unknown_fields__: []
        },
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "input",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeInput",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "input",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "timeout",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "timeout",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "Type",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "UNDEFINED",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "GOLANG",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "NODE",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CAR",
              number: 3,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "JAVA",
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

  field :type, 1, type: HyperledgerFabric.Protos.Protos.ChaincodeSpec.Type, enum: true

  field :chaincode_id, 2,
    type: HyperledgerFabric.Protos.Protos.ChaincodeID,
    json_name: "chaincodeId"

  field :input, 3, type: HyperledgerFabric.Protos.Protos.ChaincodeInput
  field :timeout, 4, type: :int32
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeDeploymentSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeDeploymentSpec",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincode_spec",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeSpec",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeSpec",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "code_package",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "codePackage",
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
        %Google.Protobuf.DescriptorProto.ReservedRange{start: 2, end: 3, __unknown_fields__: []},
        %Google.Protobuf.DescriptorProto.ReservedRange{start: 4, end: 5, __unknown_fields__: []}
      ],
      reserved_name: ["effective_date", "exec_env"],
      __unknown_fields__: []
    }
  end

  field :chaincode_spec, 1,
    type: HyperledgerFabric.Protos.Protos.ChaincodeSpec,
    json_name: "chaincodeSpec"

  field :code_package, 3, type: :bytes, json_name: "codePackage"
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInvocationSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeInvocationSpec",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincode_spec",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ChaincodeSpec",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeSpec",
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
        %Google.Protobuf.DescriptorProto.ReservedRange{start: 2, end: 3, __unknown_fields__: []}
      ],
      reserved_name: ["id_generation_alg"],
      __unknown_fields__: []
    }
  end

  field :chaincode_spec, 1,
    type: HyperledgerFabric.Protos.Protos.ChaincodeSpec,
    json_name: "chaincodeSpec"
end

defmodule HyperledgerFabric.Protos.Protos.LifecycleEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "LifecycleEvent",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincode_name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodeName",
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

  field :chaincode_name, 1, type: :string, json_name: "chaincodeName"
end

defmodule HyperledgerFabric.Protos.Protos.CDSData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CDSData",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "hash",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "hash",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadatahash",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "metadatahash",
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

  field :hash, 1, type: :bytes
  field :metadatahash, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ChaincodeData",
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
          name: "version",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "version",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "escc",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "escc",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "vscc",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "vscc",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "policy",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignaturePolicyEnvelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "policy",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "data",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "id",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "id",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "instantiation_policy",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.SignaturePolicyEnvelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "instantiationPolicy",
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
  field :version, 2, type: :string
  field :escc, 3, type: :string
  field :vscc, 4, type: :string
  field :policy, 5, type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope
  field :data, 6, type: :bytes
  field :id, 7, type: :bytes

  field :instantiation_policy, 8,
    type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope,
    json_name: "instantiationPolicy"
end