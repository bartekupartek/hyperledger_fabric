defmodule HyperledgerFabric.Protos.Protos.SignedProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proposal_bytes, 1, type: :bytes, json_name: "proposalBytes"
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.Proposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: :bytes
  field :payload, 2, type: :bytes
  field :extension, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeHeaderExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chaincode_id, 2,
    type: HyperledgerFabric.Protos.Protos.ChaincodeID,
    json_name: "chaincodeId"
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload.TransientMapEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :input, 1, type: :bytes

  field :TransientMap, 2,
    repeated: true,
    type: HyperledgerFabric.Protos.Protos.ChaincodeProposalPayload.TransientMapEntry,
    map: true
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1, type: :bytes
  field :events, 2, type: :bytes
  field :response, 3, type: HyperledgerFabric.Protos.Protos.Response

  field :chaincode_id, 4,
    type: HyperledgerFabric.Protos.Protos.ChaincodeID,
    json_name: "chaincodeId"
end