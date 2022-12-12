defmodule HyperledgerFabric.Protos.Common.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:UNKNOWN, 0)
  field(:SUCCESS, 200)
  field(:BAD_REQUEST, 400)
  field(:FORBIDDEN, 403)
  field(:NOT_FOUND, 404)
  field(:REQUEST_ENTITY_TOO_LARGE, 413)
  field(:INTERNAL_SERVER_ERROR, 500)
  field(:NOT_IMPLEMENTED, 501)
  field(:SERVICE_UNAVAILABLE, 503)
end

defmodule HyperledgerFabric.Protos.Common.HeaderType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:MESSAGE, 0)
  field(:CONFIG, 1)
  field(:CONFIG_UPDATE, 2)
  field(:ENDORSER_TRANSACTION, 3)
  field(:ORDERER_TRANSACTION, 4)
  field(:DELIVER_SEEK_INFO, 5)
  field(:CHAINCODE_PACKAGE, 6)
end

defmodule HyperledgerFabric.Protos.Common.BlockMetadataIndex do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:SIGNATURES, 0)
  field(:LAST_CONFIG, 1)
  field(:TRANSACTIONS_FILTER, 2)
  field(:ORDERER, 3)
  field(:COMMIT_HASH, 4)
end

defmodule HyperledgerFabric.Protos.Common.LastConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:index, 1, type: :uint64)
end

defmodule HyperledgerFabric.Protos.Common.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:value, 1, type: :bytes)
  field(:signatures, 2, repeated: true, type: HyperledgerFabric.Protos.Common.MetadataSignature)
end

defmodule HyperledgerFabric.Protos.Common.MetadataSignature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:signature_header, 1, type: :bytes, json_name: "signatureHeader")
  field(:signature, 2, type: :bytes)
  field(:identifier_header, 3, type: :bytes, json_name: "identifierHeader")
end

defmodule HyperledgerFabric.Protos.Common.IdentifierHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:identifier, 1, type: :uint32)
  field(:nonce, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Common.Header do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:channel_header, 1, type: :bytes, json_name: "channelHeader")
  field(:signature_header, 2, type: :bytes, json_name: "signatureHeader")
end

defmodule HyperledgerFabric.Protos.Common.ChannelHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:type, 1, type: :int32)
  field(:version, 2, type: :int32)
  field(:timestamp, 3, type: Google.Protobuf.Timestamp)
  field(:channel_id, 4, type: :string, json_name: "channelId")
  field(:tx_id, 5, type: :string, json_name: "txId")
  field(:epoch, 6, type: :uint64)
  field(:extension, 7, type: :bytes)
  field(:tls_cert_hash, 8, type: :bytes, json_name: "tlsCertHash")
end

defmodule HyperledgerFabric.Protos.Common.SignatureHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:creator, 1, type: :bytes)
  field(:nonce, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Common.Payload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:header, 1, type: HyperledgerFabric.Protos.Common.Header)
  field(:data, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Common.Envelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:payload, 1, type: :bytes)
  field(:signature, 2, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Common.Block do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:header, 1, type: HyperledgerFabric.Protos.Common.BlockHeader)
  field(:data, 2, type: HyperledgerFabric.Protos.Common.BlockData)
  field(:metadata, 3, type: HyperledgerFabric.Protos.Common.BlockMetadata)
end

defmodule HyperledgerFabric.Protos.Common.BlockHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:number, 1, type: :uint64)
  field(:previous_hash, 2, type: :bytes, json_name: "previousHash")
  field(:data_hash, 3, type: :bytes, json_name: "dataHash")
end

defmodule HyperledgerFabric.Protos.Common.BlockData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:data, 1, repeated: true, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Common.BlockMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:metadata, 1, repeated: true, type: :bytes)
end

defmodule HyperledgerFabric.Protos.Common.OrdererBlockMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:last_config, 1, type: HyperledgerFabric.Protos.Common.LastConfig, json_name: "lastConfig")

  field(:consenter_metadata, 2, type: :bytes, json_name: "consenterMetadata")
end
