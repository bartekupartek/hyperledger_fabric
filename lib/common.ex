defmodule HyperledgerFabric.Common do
  @moduledoc """
  Common utility functions for working with Hyperledger Fabric.
  """

  alias HyperledgerFabric.Protos.Common.ChannelHeader
  alias HyperledgerFabric.Protos.Protos.ChaincodeHeaderExtension
  alias HyperledgerFabric.Protos.Protos.ChaincodeID

  @doc """
  Creates a channel header for a proposal.
  """
  def create_channel_header(tx_id, channel_id, chaincode_id) do
    payload_type = HyperledgerFabric.Protos.Common.HeaderType.value(:ENDORSER_TRANSACTION)

    cc_id = ChaincodeID.new(name: chaincode_id)

    channel_header_extension = ChaincodeHeaderExtension.new(chaincode_id: cc_id)

    nanos_epoch = System.system_time() |> System.convert_time_unit(:native, :nanosecond)
    seconds = div(nanos_epoch, 1_000_000_000)
    nanos = nanos_epoch - seconds * 1_000_000_000

    tx_timestamp = %Google.Protobuf.Timestamp{seconds: seconds, nanos: nanos}

    cc_version = Application.fetch_env!(:hyperledger_fabric, :chaincode_version)

    ChannelHeader.new(
      type: payload_type,
      channel_id: channel_id,
      tx_id: tx_id,
      extension: Protobuf.Encoder.encode(channel_header_extension),
      timestamp: tx_timestamp,
      version: cc_version
    )
  end
end
