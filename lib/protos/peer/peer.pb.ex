defmodule HyperledgerFabric.Protos.Protos.Endorser.Service do
  @moduledoc false
  use GRPC.Service, name: "protos.Endorser", protoc_gen_elixir_version: "0.11.0"

  rpc(
    :ProcessProposal,
    HyperledgerFabric.Protos.Protos.SignedProposal,
    HyperledgerFabric.Protos.Protos.ProposalResponse
  )
end

defmodule HyperledgerFabric.Protos.Protos.Endorser.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Protos.Endorser.Service
end
