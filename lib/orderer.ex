defmodule HyperledgerFabric.Orderer do
  @moduledoc false

  use GRPC.Server, service: HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Service

  @doc """
  Sends a transaction envelope to an orderer for broadcasting.
  """
  def send_broadcast(channel, envelope) do
    stream = HyperledgerFabric.Protos.Orderer.AtomicBroadcast.Stub.broadcast(channel)

    GRPC.Stub.send_request(stream, envelope, end_stream: true)

    case GRPC.Stub.recv(stream) do
      {:ok, reply_enum} ->
        replies = Enum.map(reply_enum, fn {:ok, reply} -> reply end)
        {:ok, replies}

      {:error, reason} ->
        {:error, reason}
    end
  end
end
