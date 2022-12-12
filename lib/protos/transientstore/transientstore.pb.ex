defmodule HyperledgerFabric.Protos.Transientstore.TxPvtReadWriteSetWithConfigInfo.CollectionConfigsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :string)
  field(:value, 2, type: HyperledgerFabric.Protos.Protos.CollectionConfigPackage)
end

defmodule HyperledgerFabric.Protos.Transientstore.TxPvtReadWriteSetWithConfigInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:endorsed_at, 1, type: :uint64, json_name: "endorsedAt")
  field(:pvt_rwset, 2, type: Rwset.TxPvtReadWriteSet, json_name: "pvtRwset")

  field(:collection_configs, 3,
    repeated: true,
    type:
      HyperledgerFabric.Protos.Transientstore.TxPvtReadWriteSetWithConfigInfo.CollectionConfigsEntry,
    json_name: "collectionConfigs",
    map: true
  )
end
