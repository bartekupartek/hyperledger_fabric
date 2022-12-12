defmodule HyperledgerFabric do
  @moduledoc """
  A client library for interacting with Hyperledger Fabric blockchain networks.

  This library provides a simple interface for connecting to a Hyperledger Fabric
  network, invoking chaincode (smart contracts), and querying the ledger.
  """

  alias HyperledgerFabric.Client

  @doc """
  Invokes a chaincode function on the Hyperledger Fabric network.

  ## Parameters

  * `chaincode_id` - The ID of the chaincode to invoke
  * `function_name` - The name of the function to call
  * `args` - List of arguments to pass to the function
  * `channel_id` - The ID of the channel where the chaincode is deployed
  * `opts` - Additional options (optional)
  """
  def invoke_chaincode(chaincode_id, function_name, args, channel_id, opts \\ []) do
    Client.invoke_chaincode(chaincode_id, function_name, args, channel_id, opts)
  end

  @doc """
  Queries a chaincode function on the Hyperledger Fabric network.
  """
  def query_chaincode(chaincode_id, function_name, args, channel_id, opts \\ []) do
    Client.query_chaincode(chaincode_id, function_name, args, channel_id, opts)
  end

  @doc """
  Connects to the Hyperledger Fabric network, establishes the connections to the orderers and peers
  as configured, and enrolls with the Fabric CA.
  """
  def connect(opts \\ []) do
    Client.connect(opts)
  end
end
