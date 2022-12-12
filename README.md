# HyperledgerFabric

The HLF client was specifically designed to facilitate rapid prototyping of UTxO-based fees implementations and allow to maintain a minimalist architecture. This library can be used in Fabric blockchanin based projects (like CBDC) that requires an efficient and direct communication with Hyperledger Fabric chaincode. It's developed to eliminate unnecessary middleware microservices, external queues, and can be utilized with Oban queue successfully.

# Installation

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

# Build using make

Run Elixir bindings code generation:
```
protoc --elixir_out=plugins=grpc,package_prefix=hyperledger_fabric.protos:./lib/protos \
  --proto_path=./fabric-protos \
  ./fabric-protos/*/**.proto
```

[protobuf]: https://github.com/protocolbuffers/protobuf/

# Usage

### Invoke a chaincode function
```elixir
{:ok, client} = HyperledgerFabric.connect()
```
### Invoke a chaincode function
```elixir
{:ok, result} = HyperledgerFabric.invoke_chaincode("mycc", "myFunction", ["arg1", "arg2"], "mychannel")
```
### Query a chaincode function
```elixir
{:ok, value} = HyperledgerFabric.query_chaincode("mycc", "myFunction", ["arg1"], "mychannel")
```

## Configuration

See config/config.exs for required configuration options.