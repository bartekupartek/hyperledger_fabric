defmodule HyperledgerFabric.Protos.Protos.TxValidationCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:VALID, 0)
  field(:NIL_ENVELOPE, 1)
  field(:BAD_PAYLOAD, 2)
  field(:BAD_COMMON_HEADER, 3)
  field(:BAD_CREATOR_SIGNATURE, 4)
  field(:INVALID_ENDORSER_TRANSACTION, 5)
  field(:INVALID_CONFIG_TRANSACTION, 6)
  field(:UNSUPPORTED_TX_PAYLOAD, 7)
  field(:BAD_PROPOSAL_TXID, 8)
  field(:DUPLICATE_TXID, 9)
  field(:ENDORSEMENT_POLICY_FAILURE, 10)
  field(:MVCC_READ_CONFLICT, 11)
  field(:PHANTOM_READ_CONFLICT, 12)
  field(:UNKNOWN_TX_TYPE, 13)
  field(:TARGET_CHAIN_NOT_FOUND, 14)
  field(:MARSHAL_TX_ERROR, 15)
  field(:NIL_TXACTION, 16)
  field(:EXPIRED_CHAINCODE, 17)
  field(:CHAINCODE_VERSION_CONFLICT, 18)
  field(:BAD_HEADER_EXTENSION, 19)
  field(:BAD_CHANNEL_HEADER, 20)
  field(:BAD_RESPONSE_PAYLOAD, 21)
  field(:BAD_RWSET, 22)
  field(:ILLEGAL_WRITESET, 23)
  field(:INVALID_WRITESET, 24)
  field(:INVALID_CHAINCODE, 25)
  field(:NOT_VALIDATED, 254)
  field(:INVALID_OTHER_REASON, 255)
end

defmodule HyperledgerFabric.Protos.Protos.MetaDataKeys do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:VALIDATION_PARAMETER, 0)
  field(:VALIDATION_PARAMETER_V2, 1)
end

defmodule HyperledgerFabric.Protos.Protos.ProcessedTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:transactionEnvelope, 1, type: HyperledgerFabric.Protos.Common.Envelope)
  field(:validationCode, 2, type: :int32)
end

defmodule HyperledgerFabric.Protos.Protos.Transaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:actions, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.TransactionAction)
end

defmodule HyperledgerFabric.Protos.Protos.TransactionAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:header, 1, type: :bytes)
  field(:payload, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeActionPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:chaincode_proposal_payload, 1, type: :bytes, json_name: "chaincodeProposalPayload")
  field(:action, 2, type: HyperledgerFabric.Protos.Protos.ChaincodeEndorsedAction)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeEndorsedAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:proposal_response_payload, 1, type: :bytes, json_name: "proposalResponsePayload")
  field(:endorsements, 2, repeated: true, type: HyperledgerFabric.Protos.Protos.Endorsement)
end
