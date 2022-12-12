defmodule HyperledgerFabric.Protos.Common.HashingAlgorithm do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:name, 1, type: :string)
end

defmodule HyperledgerFabric.Protos.Common.BlockDataHashingStructure do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:width, 1, type: :uint32)
end

defmodule HyperledgerFabric.Protos.Common.OrdererAddresses do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:addresses, 1, repeated: true, type: :string)
end

defmodule HyperledgerFabric.Protos.Common.Consenter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:id, 1, type: :uint32)
  field(:host, 2, type: :string)
  field(:port, 3, type: :uint32)
  field(:msp_id, 4, type: :string, json_name: "mspId")
  field(:identity, 5, type: :bytes)
  field(:client_tls_cert, 6, type: :bytes, json_name: "clientTlsCert")
  field(:server_tls_cert, 7, type: :bytes, json_name: "serverTlsCert")
end

defmodule HyperledgerFabric.Protos.Common.Orderers do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:consenter_mapping, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Common.Consenter,
    json_name: "consenterMapping"
  )
end

defmodule HyperledgerFabric.Protos.Common.Consortium do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:name, 1, type: :string)
end

defmodule HyperledgerFabric.Protos.Common.Capabilities.CapabilitiesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: HyperledgerFabric.Protos.Common.Capability)
end

defmodule HyperledgerFabric.Protos.Common.Capabilities do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:capabilities, 1,
    repeated: true,
    type: HyperledgerFabric.Protos.Common.Capabilities.CapabilitiesEntry,
    map: true
  )
end

defmodule HyperledgerFabric.Protos.Common.Capability do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end
