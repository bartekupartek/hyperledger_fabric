defmodule HyperledgerFabric.Protos.Protos.ChaincodeEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:chaincode_id, 1, type: :string, json_name: "chaincodeId")
  field(:tx_id, 2, type: :string, json_name: "txId")
  field(:event_name, 3, type: :string, json_name: "eventName")
  field(:payload, 4, type: :bytes)
end
