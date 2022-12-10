defmodule HyperledgerFabric.Protos.Protos.Endorser.Service do
  @moduledoc false
  use GRPC.Service, name: "protos.Endorser", protoc_gen_elixir_version: "0.11.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "Endorser",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "ProcessProposal",
          input_type: ".protos.SignedProposal",
          output_type: ".protos.ProposalResponse",
          options: nil,
          client_streaming: false,
          server_streaming: false,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :ProcessProposal,
      HyperledgerFabric.Protos.Protos.SignedProposal,
      HyperledgerFabric.Protos.Protos.ProposalResponse
end

defmodule HyperledgerFabric.Protos.Protos.Endorser.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Protos.Endorser.Service
end