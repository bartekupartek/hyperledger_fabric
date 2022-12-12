defmodule HyperledgerFabric.Protos.Protos.ChaincodeSpec.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:UNDEFINED, 0)
  field(:GOLANG, 1)
  field(:NODE, 2)
  field(:CAR, 3)
  field(:JAVA, 4)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:path, 1, type: :string)
  field(:name, 2, type: :string)
  field(:version, 3, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInput.DecorationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:args, 1, repeated: true, type: :bytes)

  field(:decorations, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.ChaincodeInput.DecorationsEntry,
    map: true
  )

  field(:is_init, 3, type: :bool, json_name: "isInit")
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:type, 1, type: HyperledgerFabric.Protos.Protos.ChaincodeSpec.Type, enum: true)

  field(:chaincode_id, 2,
    type: HyperledgerFabric.Protos.Protos.ChaincodeID,
    json_name: "chaincodeId"
  )

  field(:input, 3, type: HyperledgerFabric.Protos.Protos.ChaincodeInput)
  field(:timeout, 4, type: :int32)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeDeploymentSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:chaincode_spec, 1,
    type: HyperledgerFabric.Protos.Protos.ChaincodeSpec,
    json_name: "chaincodeSpec"
  )

  field(:code_package, 3, type: :bytes, json_name: "codePackage")
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInvocationSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:chaincode_spec, 1,
    type: HyperledgerFabric.Protos.Protos.ChaincodeSpec,
    json_name: "chaincodeSpec"
  )
end

defmodule HyperledgerFabric.Protos.Protos.LifecycleEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:chaincode_name, 1, type: :string, json_name: "chaincodeName")
end

defmodule HyperledgerFabric.Protos.Protos.CDSData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:hash, 1, type: :bytes)
  field(:metadatahash, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:name, 1, type: :string)
  field(:version, 2, type: :string)
  field(:escc, 3, type: :string)
  field(:vscc, 4, type: :string)
  field(:policy, 5, type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope)
  field(:data, 6, type: :bytes)
  field(:id, 7, type: :bytes)

  field(:instantiation_policy, 8,
    type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope,
    json_name: "instantiationPolicy"
  )
end
