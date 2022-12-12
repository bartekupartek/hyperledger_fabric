defmodule HyperledgerFabric.Peer do
  @moduledoc false

  use GRPC.Server, service: HyperledgerFabric.Protos.Protos.Endorser.Service

  def send_process_proposal(channel, proposal) do
    HyperledgerFabric.Protos.Protos.Endorser.Stub.process_proposal(channel, proposal)
  end
end
