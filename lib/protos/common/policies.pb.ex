defmodule HyperledgerFabric.Protos.Common.Policy.PolicyType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:UNKNOWN, 0)
  field(:SIGNATURE, 1)
  field(:MSP, 2)
  field(:IMPLICIT_META, 3)
end

defmodule HyperledgerFabric.Protos.Common.ImplicitMetaPolicy.Rule do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:ANY, 0)
  field(:ALL, 1)
  field(:MAJORITY, 2)
end

defmodule HyperledgerFabric.Protos.Common.Policy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:type, 1, type: :int32)
  field(:value, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:version, 1, type: :int32)
  field(:rule, 2, type: HyperledgerFabric.Protos.Common.SignaturePolicy)
  field(:identities, 3, repeated: true, type: HyperledgerFabric.Protos.Common.MSPPrincipal)
end

defmodule HyperledgerFabric.Protos.Common.SignaturePolicy.NOutOf do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:n, 1, type: :int32)
  field(:rules, 2, repeated: true, type: HyperledgerFabric.Protos.Common.SignaturePolicy)
end

defmodule HyperledgerFabric.Protos.Common.SignaturePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:Type, 0)

  field(:signed_by, 1, type: :int32, json_name: "signedBy", oneof: 0)

  field(:n_out_of, 2,
    type: HyperledgerFabric.Protos.Common.SignaturePolicy.NOutOf,
    json_name: "nOutOf",
    oneof: 0
  )
end

defmodule HyperledgerFabric.Protos.Common.ImplicitMetaPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:sub_policy, 1, type: :string, json_name: "subPolicy")
  field(:rule, 2, type: HyperledgerFabric.Protos.Common.ImplicitMetaPolicy.Rule, enum: true)
end

defmodule HyperledgerFabric.Protos.Common.ApplicationPolicy do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:Type, 0)

  field(:signature_policy, 1,
    type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope,
    json_name: "signaturePolicy",
    oneof: 0
  )

  field(:channel_config_policy_reference, 2,
    type: :string,
    json_name: "channelConfigPolicyReference",
    oneof: 0
  )
end
