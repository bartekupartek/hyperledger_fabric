defmodule HyperledgerFabric.Protos.Msp.SerializedIdentity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mspid, 1, type: :string
  field :id_bytes, 2, type: :bytes, json_name: "idBytes"
end

defmodule HyperledgerFabric.Protos.Msp.SerializedIdemixIdentity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nym_x, 1, type: :bytes, json_name: "nymX"
  field :nym_y, 2, type: :bytes, json_name: "nymY"
  field :ou, 3, type: :bytes
  field :role, 4, type: :bytes
  field :proof, 5, type: :bytes
end