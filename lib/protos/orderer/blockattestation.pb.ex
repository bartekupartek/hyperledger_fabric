defmodule HyperledgerFabric.Protos.Orderer.BlockAttestation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: HyperledgerFabric.Protos.Common.BlockHeader
  field :metadata, 2, type: HyperledgerFabric.Protos.Common.BlockMetadata
end

defmodule HyperledgerFabric.Protos.Orderer.BlockAttestationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :Type, 0

  field :status, 1, type: HyperledgerFabric.Protos.Common.Status, enum: true, oneof: 0

  field :block_attestation, 2,
    type: HyperledgerFabric.Protos.Orderer.BlockAttestation,
    json_name: "blockAttestation",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Orderer.BlockAttestations.Service do
  @moduledoc false
  use GRPC.Service, name: "orderer.BlockAttestations", protoc_gen_elixir_version: "0.11.0"

  rpc :BlockAttestations,
      HyperledgerFabric.Protos.Common.Envelope,
      stream(HyperledgerFabric.Protos.Orderer.BlockAttestationResponse)
end

defmodule HyperledgerFabric.Protos.Orderer.BlockAttestations.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Orderer.BlockAttestations.Service
end