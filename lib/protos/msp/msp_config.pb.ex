defmodule HyperledgerFabric.Protos.Msp.MSPConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MSPConfig",
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
          name: "config",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
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

  field :type, 1, type: :int32
  field :config, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Msp.FabricMSPConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FabricMSPConfig",
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
          name: "root_certs",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "rootCerts",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "intermediate_certs",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "intermediateCerts",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "admins",
          extendee: nil,
          number: 4,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "admins",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "revocation_list",
          extendee: nil,
          number: 5,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "revocationList",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signing_identity",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.SigningIdentityInfo",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signingIdentity",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "organizational_unit_identifiers",
          extendee: nil,
          number: 7,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".msp.FabricOUIdentifier",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "organizationalUnitIdentifiers",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "crypto_config",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.FabricCryptoConfig",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "cryptoConfig",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tls_root_certs",
          extendee: nil,
          number: 9,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "tlsRootCerts",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tls_intermediate_certs",
          extendee: nil,
          number: 10,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "tlsIntermediateCerts",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "fabric_node_ous",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.FabricNodeOUs",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "fabricNodeOus",
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
  field :root_certs, 2, repeated: true, type: :bytes, json_name: "rootCerts"
  field :intermediate_certs, 3, repeated: true, type: :bytes, json_name: "intermediateCerts"
  field :admins, 4, repeated: true, type: :bytes
  field :revocation_list, 5, repeated: true, type: :bytes, json_name: "revocationList"

  field :signing_identity, 6,
    type: HyperledgerFabric.Protos.Msp.SigningIdentityInfo,
    json_name: "signingIdentity"

  field :organizational_unit_identifiers, 7,
    repeated: true,
    type: HyperledgerFabric.Protos.Msp.FabricOUIdentifier,
    json_name: "organizationalUnitIdentifiers"

  field :crypto_config, 8,
    type: HyperledgerFabric.Protos.Msp.FabricCryptoConfig,
    json_name: "cryptoConfig"

  field :tls_root_certs, 9, repeated: true, type: :bytes, json_name: "tlsRootCerts"

  field :tls_intermediate_certs, 10,
    repeated: true,
    type: :bytes,
    json_name: "tlsIntermediateCerts"

  field :fabric_node_ous, 11,
    type: HyperledgerFabric.Protos.Msp.FabricNodeOUs,
    json_name: "fabricNodeOus"
end

defmodule HyperledgerFabric.Protos.Msp.FabricCryptoConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FabricCryptoConfig",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature_hash_family",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signatureHashFamily",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "identity_identifier_hash_function",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "identityIdentifierHashFunction",
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

  field :signature_hash_family, 1, type: :string, json_name: "signatureHashFamily"

  field :identity_identifier_hash_function, 2,
    type: :string,
    json_name: "identityIdentifierHashFunction"
end

defmodule HyperledgerFabric.Protos.Msp.IdemixMSPConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "IdemixMSPConfig",
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
          name: "ipk",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ipk",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signer",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.IdemixMSPSignerConfig",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signer",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "revocation_pk",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "revocationPk",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "epoch",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "epoch",
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
  field :ipk, 2, type: :bytes
  field :signer, 3, type: HyperledgerFabric.Protos.Msp.IdemixMSPSignerConfig
  field :revocation_pk, 4, type: :bytes, json_name: "revocationPk"
  field :epoch, 5, type: :int64
end

defmodule HyperledgerFabric.Protos.Msp.IdemixMSPSignerConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "IdemixMSPSignerConfig",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "cred",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "cred",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "sk",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "sk",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "organizational_unit_identifier",
          extendee: nil,
          number: 3,
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
          name: "role",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "role",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "enrollment_id",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "enrollmentId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "credential_revocation_information",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "credentialRevocationInformation",
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

  field :cred, 1, type: :bytes
  field :sk, 2, type: :bytes

  field :organizational_unit_identifier, 3,
    type: :string,
    json_name: "organizationalUnitIdentifier"

  field :role, 4, type: :int32
  field :enrollment_id, 5, type: :string, json_name: "enrollmentId"

  field :credential_revocation_information, 6,
    type: :bytes,
    json_name: "credentialRevocationInformation"
end

defmodule HyperledgerFabric.Protos.Msp.SigningIdentityInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SigningIdentityInfo",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "public_signer",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "publicSigner",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "private_signer",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.KeyInfo",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "privateSigner",
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

  field :public_signer, 1, type: :bytes, json_name: "publicSigner"
  field :private_signer, 2, type: HyperledgerFabric.Protos.Msp.KeyInfo, json_name: "privateSigner"
end

defmodule HyperledgerFabric.Protos.Msp.KeyInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "KeyInfo",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "key_identifier",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "keyIdentifier",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "key_material",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "keyMaterial",
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

  field :key_identifier, 1, type: :string, json_name: "keyIdentifier"
  field :key_material, 2, type: :bytes, json_name: "keyMaterial"
end

defmodule HyperledgerFabric.Protos.Msp.FabricOUIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FabricOUIdentifier",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "certificate",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "certificate",
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

  field :certificate, 1, type: :bytes

  field :organizational_unit_identifier, 2,
    type: :string,
    json_name: "organizationalUnitIdentifier"
end

defmodule HyperledgerFabric.Protos.Msp.FabricNodeOUs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "FabricNodeOUs",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "enable",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "enable",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "client_ou_identifier",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.FabricOUIdentifier",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "clientOuIdentifier",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "peer_ou_identifier",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.FabricOUIdentifier",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "peerOuIdentifier",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "admin_ou_identifier",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.FabricOUIdentifier",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "adminOuIdentifier",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "orderer_ou_identifier",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".msp.FabricOUIdentifier",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ordererOuIdentifier",
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

  field :enable, 1, type: :bool

  field :client_ou_identifier, 2,
    type: HyperledgerFabric.Protos.Msp.FabricOUIdentifier,
    json_name: "clientOuIdentifier"

  field :peer_ou_identifier, 3,
    type: HyperledgerFabric.Protos.Msp.FabricOUIdentifier,
    json_name: "peerOuIdentifier"

  field :admin_ou_identifier, 4,
    type: HyperledgerFabric.Protos.Msp.FabricOUIdentifier,
    json_name: "adminOuIdentifier"

  field :orderer_ou_identifier, 5,
    type: HyperledgerFabric.Protos.Msp.FabricOUIdentifier,
    json_name: "ordererOuIdentifier"
end