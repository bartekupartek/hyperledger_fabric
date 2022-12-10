defmodule HyperledgerFabric.Protos.Gateway.EndorseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :channel_id, 2, type: :string, json_name: "channelId"

  field :proposed_transaction, 3,
    type: HyperledgerFabric.Protos.Protos.SignedProposal,
    json_name: "proposedTransaction"

  field :endorsing_organizations, 4,
    repeated: true,
    type: :string,
    json_name: "endorsingOrganizations"
end

defmodule HyperledgerFabric.Protos.Gateway.EndorseResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :prepared_transaction, 1,
    type: HyperledgerFabric.Protos.Common.Envelope,
    json_name: "preparedTransaction"
end

defmodule HyperledgerFabric.Protos.Gateway.SubmitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :channel_id, 2, type: :string, json_name: "channelId"

  field :prepared_transaction, 3,
    type: HyperledgerFabric.Protos.Common.Envelope,
    json_name: "preparedTransaction"
end

defmodule HyperledgerFabric.Protos.Gateway.SubmitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule HyperledgerFabric.Protos.Gateway.SignedCommitStatusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request, 1, type: :bytes
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gateway.CommitStatusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :identity, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gateway.CommitStatusResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: HyperledgerFabric.Protos.Protos.TxValidationCode, enum: true
  field :block_number, 2, type: :uint64, json_name: "blockNumber"
end

defmodule HyperledgerFabric.Protos.Gateway.EvaluateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :channel_id, 2, type: :string, json_name: "channelId"

  field :proposed_transaction, 3,
    type: HyperledgerFabric.Protos.Protos.SignedProposal,
    json_name: "proposedTransaction"

  field :target_organizations, 4, repeated: true, type: :string, json_name: "targetOrganizations"
end

defmodule HyperledgerFabric.Protos.Gateway.EvaluateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: HyperledgerFabric.Protos.Protos.Response
end

defmodule HyperledgerFabric.Protos.Gateway.SignedChaincodeEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request, 1, type: :bytes
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gateway.ChaincodeEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId"
  field :chaincode_id, 2, type: :string, json_name: "chaincodeId"
  field :identity, 3, type: :bytes

  field :start_position, 4,
    type: HyperledgerFabric.Protos.Orderer.SeekPosition,
    json_name: "startPosition"

  field :after_transaction_id, 5, type: :string, json_name: "afterTransactionId"
end

defmodule HyperledgerFabric.Protos.Gateway.ChaincodeEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :events, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.ChaincodeEvent
  field :block_number, 2, type: :uint64, json_name: "blockNumber"
end

defmodule HyperledgerFabric.Protos.Gateway.ErrorDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 1, type: :string
  field :msp_id, 2, type: :string, json_name: "mspId"
  field :message, 3, type: :string
end

defmodule HyperledgerFabric.Protos.Gateway.ProposedTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :proposal, 2, type: HyperledgerFabric.Protos.Protos.SignedProposal

  field :endorsing_organizations, 3,
    repeated: true,
    type: :string,
    json_name: "endorsingOrganizations"
end

defmodule HyperledgerFabric.Protos.Gateway.PreparedTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transaction_id, 1, type: :string, json_name: "transactionId"
  field :envelope, 2, type: HyperledgerFabric.Protos.Common.Envelope
end

defmodule HyperledgerFabric.Protos.Gateway.Gateway.Service do
  @moduledoc false
  use GRPC.Service, name: "gateway.Gateway", protoc_gen_elixir_version: "0.11.0"

  rpc :Endorse,
      HyperledgerFabric.Protos.Gateway.EndorseRequest,
      HyperledgerFabric.Protos.Gateway.EndorseResponse

  rpc :Submit,
      HyperledgerFabric.Protos.Gateway.SubmitRequest,
      HyperledgerFabric.Protos.Gateway.SubmitResponse

  rpc :CommitStatus,
      HyperledgerFabric.Protos.Gateway.SignedCommitStatusRequest,
      HyperledgerFabric.Protos.Gateway.CommitStatusResponse

  rpc :Evaluate,
      HyperledgerFabric.Protos.Gateway.EvaluateRequest,
      HyperledgerFabric.Protos.Gateway.EvaluateResponse

  rpc :ChaincodeEvents,
      HyperledgerFabric.Protos.Gateway.SignedChaincodeEventsRequest,
      stream(HyperledgerFabric.Protos.Gateway.ChaincodeEventsResponse)
end

defmodule HyperledgerFabric.Protos.Gateway.Gateway.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Gateway.Gateway.Service
end