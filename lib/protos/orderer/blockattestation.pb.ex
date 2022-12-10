defmodule HyperledgerFabric.Protos.Orderer.BlockAttestation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BlockAttestation",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "header",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.BlockHeader",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "header",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".common.BlockMetadata",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "metadata",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :header, 1, type: HyperledgerFabric.Protos.Common.BlockHeader
  field :metadata, 2, type: HyperledgerFabric.Protos.Common.BlockMetadata
end

defmodule HyperledgerFabric.Protos.Orderer.BlockAttestationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "BlockAttestationResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "status",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".common.Status",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "status",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_attestation",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".orderer.BlockAttestation",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "blockAttestation",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{name: "Type", options: nil, __unknown_fields__: []}
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

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

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "BlockAttestations",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "BlockAttestations",
          input_type: ".common.Envelope",
          output_type: ".orderer.BlockAttestationResponse",
          options: nil,
          client_streaming: false,
          server_streaming: true,
          __unknown_fields__: []
        }
      ],
      options: nil,
      __unknown_fields__: []
    }
  end

  rpc :BlockAttestations,
      HyperledgerFabric.Protos.Common.Envelope,
      stream(HyperledgerFabric.Protos.Orderer.BlockAttestationResponse)
end

defmodule HyperledgerFabric.Protos.Orderer.BlockAttestations.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Orderer.BlockAttestations.Service
end