defmodule HyperledgerFabric.Protos.Protos.ProposalResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :int32
  field :timestamp, 2, type: Google.Protobuf.Timestamp
  field :response, 4, type: HyperledgerFabric.Protos.Protos.Response
  field :payload, 5, type: :bytes
  field :endorsement, 6, type: HyperledgerFabric.Protos.Protos.Endorsement
  field :interest, 7, type: HyperledgerFabric.Protos.Protos.ChaincodeInterest
end

defmodule HyperledgerFabric.Protos.Protos.Response do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: :int32
  field :message, 2, type: :string
  field :payload, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ProposalResponsePayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proposal_hash, 1, type: :bytes, json_name: "proposalHash"
  field :extension, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.Endorsement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :endorser, 1, type: :bytes
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeInterest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chaincodes, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.ChaincodeCall
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeCall do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :collection_names, 2, repeated: true, type: :string, json_name: "collectionNames"
  field :no_private_reads, 3, type: :bool, json_name: "noPrivateReads"
  field :no_public_writes, 4, type: :bool, json_name: "noPublicWrites"

  field :key_policies, 5,
    repeated: true,
    type: HyperledgerFabric.Protos.Common.SignaturePolicyEnvelope,
    json_name: "keyPolicies"

  field :disregard_namespace_policy, 6, type: :bool, json_name: "disregardNamespacePolicy"
end