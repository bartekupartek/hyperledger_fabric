defmodule HyperledgerFabric.Protos.Protos.SignedChaincodeDeploymentSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:chaincode_deployment_spec, 1, type: :bytes, json_name: "chaincodeDeploymentSpec")
  field(:instantiation_policy, 2, type: :bytes, json_name: "instantiationPolicy")

  field(:owner_endorsements, 3,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.Endorsement,
    json_name: "ownerEndorsements"
  )
end
