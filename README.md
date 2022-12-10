# HyperledgerFabric

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `hyperledger_fabric` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:hyperledger_fabric, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/hyperledger_fabric>.

### Build using make

Run Elixir bindings code generation:
```
protoc --elixir_out=plugins=grpc,package_prefix=hyperledger_fabric.protos:./lib/protos \
  --proto_path=./fabric-protos \
  ./fabric-protos/*/**.proto
```

[protobuf]: https://github.com/protocolbuffers/protobuf/

