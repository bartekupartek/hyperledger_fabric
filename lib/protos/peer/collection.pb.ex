defmodule HyperledgerFabric.Protos.Protos.CollectionConfigPackage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CollectionConfigPackage",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "config",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".protos.CollectionConfig",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "config",
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

  field :config, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.CollectionConfig
end

defmodule HyperledgerFabric.Protos.Protos.CollectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CollectionConfig",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "static_collection_config",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.StaticCollectionConfig",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "staticCollectionConfig",
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
        %Google.Protobuf.OneofDescriptorProto{
          name: "payload",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :payload, 0

  field :static_collection_config, 1,
    type: HyperledgerFabric.Protos.Protos.StaticCollectionConfig,
    json_name: "staticCollectionConfig",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Protos.StaticCollectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StaticCollectionConfig",
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
          name: "member_orgs_policy",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.CollectionPolicyConfig",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "memberOrgsPolicy",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "required_peer_count",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "requiredPeerCount",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "maximum_peer_count",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "maximumPeerCount",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_to_live",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "blockToLive",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "member_only_read",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "memberOnlyRead",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "member_only_write",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "memberOnlyWrite",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "endorsement_policy",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.ApplicationPolicy",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endorsementPolicy",
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

  field :member_orgs_policy, 2,
    type: HyperledgerFabric.Protos.Protos.CollectionPolicyConfig,
    json_name: "memberOrgsPolicy"

  field :required_peer_count, 3, type: :int32, json_name: "requiredPeerCount"
  field :maximum_peer_count, 4, type: :int32, json_name: "maximumPeerCount"
  field :block_to_live, 5, type: :uint64, json_name: "blockToLive"
  field :member_only_read, 6, type: :bool, json_name: "memberOnlyRead"
  field :member_only_write, 7, type: :bool, json_name: "memberOnlyWrite"

  field :endorsement_policy, 8,
    type: HyperledgerFabric.Protos.Protos.ApplicationPolicy,
    json_name: "endorsementPolicy"
end

defmodule HyperledgerFabric.Protos.Protos.CollectionPolicyConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "CollectionPolicyConfig",
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
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "payload",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :payload, 0

  field :signature_policy, 1,
    type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope,
    json_name: "signaturePolicy",
    oneof: 0
end