defmodule HyperledgerFabric.Protos.Msp.MSPConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: :int32
  field :config, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Msp.FabricMSPConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :signature_hash_family, 1, type: :string, json_name: "signatureHashFamily"

  field :identity_identifier_hash_function, 2,
    type: :string,
    json_name: "identityIdentifierHashFunction"
end

defmodule HyperledgerFabric.Protos.Msp.IdemixMSPConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :ipk, 2, type: :bytes
  field :signer, 3, type: HyperledgerFabric.Protos.Msp.IdemixMSPSignerConfig
  field :revocation_pk, 4, type: :bytes, json_name: "revocationPk"
  field :epoch, 5, type: :int64
end

defmodule HyperledgerFabric.Protos.Msp.IdemixMSPSignerConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :public_signer, 1, type: :bytes, json_name: "publicSigner"
  field :private_signer, 2, type: HyperledgerFabric.Protos.Msp.KeyInfo, json_name: "privateSigner"
end

defmodule HyperledgerFabric.Protos.Msp.KeyInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key_identifier, 1, type: :string, json_name: "keyIdentifier"
  field :key_material, 2, type: :bytes, json_name: "keyMaterial"
end

defmodule HyperledgerFabric.Protos.Msp.FabricOUIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :certificate, 1, type: :bytes

  field :organizational_unit_identifier, 2,
    type: :string,
    json_name: "organizationalUnitIdentifier"
end

defmodule HyperledgerFabric.Protos.Msp.FabricNodeOUs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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