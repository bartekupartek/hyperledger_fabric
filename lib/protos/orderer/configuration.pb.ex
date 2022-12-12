defmodule HyperledgerFabric.Protos.Orderer.ConsensusType.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:STATE_NORMAL, 0)
  field(:STATE_MAINTENANCE, 1)
end

defmodule HyperledgerFabric.Protos.Orderer.ConsensusType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:type, 1, type: :string)
  field(:metadata, 2, type: :bytes)
  field(:state, 3, type: HyperledgerFabric.Protos.Orderer.ConsensusType.State, enum: true)
end

defmodule HyperledgerFabric.Protos.Orderer.BatchSize do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:max_message_count, 1, type: :uint32, json_name: "maxMessageCount")
  field(:absolute_max_bytes, 2, type: :uint32, json_name: "absoluteMaxBytes")
  field(:preferred_max_bytes, 3, type: :uint32, json_name: "preferredMaxBytes")
end

defmodule HyperledgerFabric.Protos.Orderer.BatchTimeout do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:timeout, 1, type: :string)
end

defmodule HyperledgerFabric.Protos.Orderer.KafkaBrokers do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:brokers, 1, repeated: true, type: :string)
end

defmodule HyperledgerFabric.Protos.Orderer.ChannelRestrictions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:max_count, 1, type: :uint64, json_name: "maxCount")
end
