defmodule HyperledgerFabric.Protos.Protos.ApplicationPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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