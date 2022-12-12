defmodule HyperledgerFabric.Protos.Common.MSPPrincipal.Classification do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:ROLE, 0)
  field(:ORGANIZATION_UNIT, 1)
  field(:IDENTITY, 2)
  field(:ANONYMITY, 3)
  field(:COMBINED, 4)
end

defmodule HyperledgerFabric.Protos.Common.MSPRole.MSPRoleType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:MEMBER, 0)
  field(:ADMIN, 1)
  field(:CLIENT, 2)
  field(:PEER, 3)
  field(:ORDERER, 4)
end

defmodule HyperledgerFabric.Protos.Common.MSPIdentityAnonymity.MSPIdentityAnonymityType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:NOMINAL, 0)
  field(:ANONYMOUS, 1)
end

defmodule HyperledgerFabric.Protos.Common.MSPPrincipal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:principal_classification, 1,
    type: HyperledgerFabric.Protos.Common.MSPPrincipal.Classification,
    json_name: "principalClassification",
    enum: true
  )

  field(:principal, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Common.OrganizationUnit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:msp_identifier, 1, type: :string, json_name: "mspIdentifier")

  field(:organizational_unit_identifier, 2,
    type: :string,
    json_name: "organizationalUnitIdentifier"
  )

  field(:certifiers_identifier, 3, type: :bytes, json_name: "certifiersIdentifier")
end

defmodule HyperledgerFabric.Protos.Common.MSPRole do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:msp_identifier, 1, type: :string, json_name: "mspIdentifier")
  field(:role, 2, type: HyperledgerFabric.Protos.Common.MSPRole.MSPRoleType, enum: true)
end

defmodule HyperledgerFabric.Protos.Common.MSPIdentityAnonymity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:anonymity_type, 1,
    type: HyperledgerFabric.Protos.Common.MSPIdentityAnonymity.MSPIdentityAnonymityType,
    json_name: "anonymityType",
    enum: true
  )
end

defmodule HyperledgerFabric.Protos.Common.CombinedPrincipal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:principals, 1, repeated: true, type: HyperledgerFabric.Protos.Common.MSPPrincipal)
end
