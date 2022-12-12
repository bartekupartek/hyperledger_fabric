defmodule HyperledgerFabric.Protos.Protos.ChaincodeMessage.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:UNDEFINED, 0)
  field(:REGISTER, 1)
  field(:REGISTERED, 2)
  field(:INIT, 3)
  field(:READY, 4)
  field(:TRANSACTION, 5)
  field(:COMPLETED, 6)
  field(:ERROR, 7)
  field(:GET_STATE, 8)
  field(:PUT_STATE, 9)
  field(:DEL_STATE, 10)
  field(:INVOKE_CHAINCODE, 11)
  field(:RESPONSE, 13)
  field(:GET_STATE_BY_RANGE, 14)
  field(:GET_QUERY_RESULT, 15)
  field(:QUERY_STATE_NEXT, 16)
  field(:QUERY_STATE_CLOSE, 17)
  field(:KEEPALIVE, 18)
  field(:GET_HISTORY_FOR_KEY, 19)
  field(:GET_STATE_METADATA, 20)
  field(:PUT_STATE_METADATA, 21)
  field(:GET_PRIVATE_DATA_HASH, 22)
  field(:PURGE_PRIVATE_DATA, 23)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:type, 1, type: HyperledgerFabric.Protos.Protos.ChaincodeMessage.Type, enum: true)
  field(:timestamp, 2, type: Google.Protobuf.Timestamp)
  field(:payload, 3, type: :bytes)
  field(:txid, 4, type: :string)
  field(:proposal, 5, type: HyperledgerFabric.Protos.Protos.SignedProposal)

  field(:chaincode_event, 6,
    type: HyperledgerFabric.Protos.Protos.ChaincodeEvent,
    json_name: "chaincodeEvent"
  )

  field(:channel_id, 7, type: :string, json_name: "channelId")
end

defmodule HyperledgerFabric.Protos.Protos.GetState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:collection, 2, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.GetStateMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:collection, 2, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.PutState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: :bytes)
  field(:collection, 3, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.PutStateMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:collection, 3, type: :string)
  field(:metadata, 4, type: HyperledgerFabric.Protos.Protos.StateMetadata)
end

defmodule HyperledgerFabric.Protos.Protos.DelState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:collection, 2, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.PurgePrivateState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:collection, 2, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.GetStateByRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:startKey, 1, type: :string)
  field(:endKey, 2, type: :string)
  field(:collection, 3, type: :string)
  field(:metadata, 4, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.GetQueryResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:query, 1, type: :string)
  field(:collection, 2, type: :string)
  field(:metadata, 3, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.QueryMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:pageSize, 1, type: :int32)
  field(:bookmark, 2, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.GetHistoryForKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.QueryStateNext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:id, 1, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.QueryStateClose do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:id, 1, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.QueryResultBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:resultBytes, 1, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.QueryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:results, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.QueryResultBytes)
  field(:has_more, 2, type: :bool, json_name: "hasMore")
  field(:id, 3, type: :string)
  field(:metadata, 4, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.QueryResponseMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:fetched_records_count, 1, type: :int32, json_name: "fetchedRecordsCount")
  field(:bookmark, 2, type: :string)
end

defmodule HyperledgerFabric.Protos.Protos.StateMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:metakey, 1, type: :string)
  field(:value, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Protos.StateMetadataResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:entries, 1, repeated: true, type: HyperledgerFabric.Protos.Protos.StateMetadata)
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeSupport.Service do
  @moduledoc false
  use GRPC.Service, name: "protos.ChaincodeSupport", protoc_gen_elixir_version: "0.11.0"

  rpc(
    :Register,
    stream(HyperledgerFabric.Protos.Protos.ChaincodeMessage),
    stream(HyperledgerFabric.Protos.Protos.ChaincodeMessage)
  )
end

defmodule HyperledgerFabric.Protos.Protos.ChaincodeSupport.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Protos.ChaincodeSupport.Service
end

defmodule HyperledgerFabric.Protos.Protos.Chaincode.Service do
  @moduledoc false
  use GRPC.Service, name: "protos.Chaincode", protoc_gen_elixir_version: "0.11.0"

  rpc(
    :Connect,
    stream(HyperledgerFabric.Protos.Protos.ChaincodeMessage),
    stream(HyperledgerFabric.Protos.Protos.ChaincodeMessage)
  )
end

defmodule HyperledgerFabric.Protos.Protos.Chaincode.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Protos.Chaincode.Service
end
