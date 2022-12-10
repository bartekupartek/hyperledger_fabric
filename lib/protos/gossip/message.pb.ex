defmodule HyperledgerFabric.Protos.Gossip.PullMsgType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "PullMsgType",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNDEFINED",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "BLOCK_MSG",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "IDENTITY_MSG",
          number: 2,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :UNDEFINED, 0
  field :BLOCK_MSG, 1
  field :IDENTITY_MSG, 2
end

defmodule HyperledgerFabric.Protos.Gossip.GossipMessage.Tag do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.EnumDescriptorProto{
      name: "Tag",
      value: [
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "UNDEFINED",
          number: 0,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "EMPTY",
          number: 1,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "ORG_ONLY",
          number: 2,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CHAN_ONLY",
          number: 3,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CHAN_AND_ORG",
          number: 4,
          options: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.EnumValueDescriptorProto{
          name: "CHAN_OR_ORG",
          number: 5,
          options: nil,
          __unknown_fields__: []
        }
      ],
      options: nil,
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :UNDEFINED, 0
  field :EMPTY, 1
  field :ORG_ONLY, 2
  field :CHAN_ONLY, 3
  field :CHAN_AND_ORG, 4
  field :CHAN_OR_ORG, 5
end

defmodule HyperledgerFabric.Protos.Gossip.Envelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Envelope",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payload",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signature",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "secret_envelope",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.SecretEnvelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "secretEnvelope",
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

  field :payload, 1, type: :bytes
  field :signature, 2, type: :bytes

  field :secret_envelope, 3,
    type: HyperledgerFabric.Protos.Gossip.SecretEnvelope,
    json_name: "secretEnvelope"
end

defmodule HyperledgerFabric.Protos.Gossip.SecretEnvelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "SecretEnvelope",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payload",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "signature",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "signature",
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

  field :payload, 1, type: :bytes
  field :signature, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gossip.Secret do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Secret",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "internalEndpoint",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "internalEndpoint",
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
        %Google.Protobuf.OneofDescriptorProto{
          name: "content",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :content, 0

  field :internalEndpoint, 1, type: :string, oneof: 0
end

defmodule HyperledgerFabric.Protos.Gossip.GossipMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GossipMessage",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "nonce",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nonce",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "channel",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tag",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".gossip.GossipMessage.Tag",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "tag",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "alive_msg",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.AliveMessage",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "aliveMsg",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mem_req",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.MembershipRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "memReq",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "mem_res",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.MembershipResponse",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "memRes",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data_msg",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.DataMessage",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "dataMsg",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "hello",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.GossipHello",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "hello",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data_dig",
          extendee: nil,
          number: 10,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.DataDigest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "dataDig",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data_req",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.DataRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "dataReq",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data_update",
          extendee: nil,
          number: 12,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.DataUpdate",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "dataUpdate",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "empty",
          extendee: nil,
          number: 13,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Empty",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "empty",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "conn",
          extendee: nil,
          number: 14,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.ConnEstablish",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "conn",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "state_info",
          extendee: nil,
          number: 15,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.StateInfo",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "stateInfo",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "state_snapshot",
          extendee: nil,
          number: 16,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.StateInfoSnapshot",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "stateSnapshot",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "state_info_pull_req",
          extendee: nil,
          number: 17,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.StateInfoPullRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "stateInfoPullReq",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "state_request",
          extendee: nil,
          number: 18,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.RemoteStateRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "stateRequest",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "state_response",
          extendee: nil,
          number: 19,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.RemoteStateResponse",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "stateResponse",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "leadership_msg",
          extendee: nil,
          number: 20,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.LeadershipMessage",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "leadershipMsg",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "peer_identity",
          extendee: nil,
          number: 21,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PeerIdentity",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "peerIdentity",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "ack",
          extendee: nil,
          number: 22,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Acknowledgement",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "ack",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "privateReq",
          extendee: nil,
          number: 23,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.RemotePvtDataRequest",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "privateReq",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "privateRes",
          extendee: nil,
          number: 24,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.RemotePvtDataResponse",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "privateRes",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "private_data",
          extendee: nil,
          number: 25,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PrivateDataMessage",
          default_value: nil,
          options: nil,
          oneof_index: 0,
          json_name: "privateData",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [
        %Google.Protobuf.EnumDescriptorProto{
          name: "Tag",
          value: [
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "UNDEFINED",
              number: 0,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "EMPTY",
              number: 1,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "ORG_ONLY",
              number: 2,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CHAN_ONLY",
              number: 3,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CHAN_AND_ORG",
              number: 4,
              options: nil,
              __unknown_fields__: []
            },
            %Google.Protobuf.EnumValueDescriptorProto{
              name: "CHAN_OR_ORG",
              number: 5,
              options: nil,
              __unknown_fields__: []
            }
          ],
          options: nil,
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: []
        }
      ],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [
        %Google.Protobuf.OneofDescriptorProto{
          name: "content",
          options: nil,
          __unknown_fields__: []
        }
      ],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  oneof :content, 0

  field :nonce, 1, type: :uint64
  field :channel, 2, type: :bytes
  field :tag, 3, type: HyperledgerFabric.Protos.Gossip.GossipMessage.Tag, enum: true

  field :alive_msg, 5,
    type: HyperledgerFabric.Protos.Gossip.AliveMessage,
    json_name: "aliveMsg",
    oneof: 0

  field :mem_req, 6,
    type: HyperledgerFabric.Protos.Gossip.MembershipRequest,
    json_name: "memReq",
    oneof: 0

  field :mem_res, 7,
    type: HyperledgerFabric.Protos.Gossip.MembershipResponse,
    json_name: "memRes",
    oneof: 0

  field :data_msg, 8,
    type: HyperledgerFabric.Protos.Gossip.DataMessage,
    json_name: "dataMsg",
    oneof: 0

  field :hello, 9, type: HyperledgerFabric.Protos.Gossip.GossipHello, oneof: 0

  field :data_dig, 10,
    type: HyperledgerFabric.Protos.Gossip.DataDigest,
    json_name: "dataDig",
    oneof: 0

  field :data_req, 11,
    type: HyperledgerFabric.Protos.Gossip.DataRequest,
    json_name: "dataReq",
    oneof: 0

  field :data_update, 12,
    type: HyperledgerFabric.Protos.Gossip.DataUpdate,
    json_name: "dataUpdate",
    oneof: 0

  field :empty, 13, type: HyperledgerFabric.Protos.Gossip.Empty, oneof: 0
  field :conn, 14, type: HyperledgerFabric.Protos.Gossip.ConnEstablish, oneof: 0

  field :state_info, 15,
    type: HyperledgerFabric.Protos.Gossip.StateInfo,
    json_name: "stateInfo",
    oneof: 0

  field :state_snapshot, 16,
    type: HyperledgerFabric.Protos.Gossip.StateInfoSnapshot,
    json_name: "stateSnapshot",
    oneof: 0

  field :state_info_pull_req, 17,
    type: HyperledgerFabric.Protos.Gossip.StateInfoPullRequest,
    json_name: "stateInfoPullReq",
    oneof: 0

  field :state_request, 18,
    type: HyperledgerFabric.Protos.Gossip.RemoteStateRequest,
    json_name: "stateRequest",
    oneof: 0

  field :state_response, 19,
    type: HyperledgerFabric.Protos.Gossip.RemoteStateResponse,
    json_name: "stateResponse",
    oneof: 0

  field :leadership_msg, 20,
    type: HyperledgerFabric.Protos.Gossip.LeadershipMessage,
    json_name: "leadershipMsg",
    oneof: 0

  field :peer_identity, 21,
    type: HyperledgerFabric.Protos.Gossip.PeerIdentity,
    json_name: "peerIdentity",
    oneof: 0

  field :ack, 22, type: HyperledgerFabric.Protos.Gossip.Acknowledgement, oneof: 0
  field :privateReq, 23, type: HyperledgerFabric.Protos.Gossip.RemotePvtDataRequest, oneof: 0
  field :privateRes, 24, type: HyperledgerFabric.Protos.Gossip.RemotePvtDataResponse, oneof: 0

  field :private_data, 25,
    type: HyperledgerFabric.Protos.Gossip.PrivateDataMessage,
    json_name: "privateData",
    oneof: 0
end

defmodule HyperledgerFabric.Protos.Gossip.StateInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StateInfo",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "timestamp",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PeerTime",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "timestamp",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pki_id",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pkiId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel_MAC",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "channelMAC",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "properties",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Properties",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "properties",
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

  field :timestamp, 2, type: HyperledgerFabric.Protos.Gossip.PeerTime
  field :pki_id, 3, type: :bytes, json_name: "pkiId"
  field :channel_MAC, 4, type: :bytes, json_name: "channelMAC"
  field :properties, 5, type: HyperledgerFabric.Protos.Gossip.Properties
end

defmodule HyperledgerFabric.Protos.Gossip.Properties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Properties",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "ledger_height",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "ledgerHeight",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "left_channel",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "leftChannel",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "chaincodes",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Chaincode",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "chaincodes",
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

  field :ledger_height, 1, type: :uint64, json_name: "ledgerHeight"
  field :left_channel, 2, type: :bool, json_name: "leftChannel"
  field :chaincodes, 3, repeated: true, type: HyperledgerFabric.Protos.Gossip.Chaincode
end

defmodule HyperledgerFabric.Protos.Gossip.StateInfoSnapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StateInfoSnapshot",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "elements",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "elements",
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

  field :elements, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.Envelope
end

defmodule HyperledgerFabric.Protos.Gossip.StateInfoPullRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StateInfoPullRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "channel_MAC",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "channelMAC",
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

  field :channel_MAC, 1, type: :bytes, json_name: "channelMAC"
end

defmodule HyperledgerFabric.Protos.Gossip.ConnEstablish do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "ConnEstablish",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "pki_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pkiId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "identity",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "identity",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tls_cert_hash",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "tlsCertHash",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "probe",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "probe",
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

  field :pki_id, 1, type: :bytes, json_name: "pkiId"
  field :identity, 2, type: :bytes
  field :tls_cert_hash, 3, type: :bytes, json_name: "tlsCertHash"
  field :probe, 4, type: :bool
end

defmodule HyperledgerFabric.Protos.Gossip.PeerIdentity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PeerIdentity",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "pki_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pkiId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "cert",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "cert",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
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

  field :pki_id, 1, type: :bytes, json_name: "pkiId"
  field :cert, 2, type: :bytes
  field :metadata, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gossip.DataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DataRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "nonce",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nonce",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "digests",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "digests",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "msg_type",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".gossip.PullMsgType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "msgType",
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

  field :nonce, 1, type: :uint64
  field :digests, 2, repeated: true, type: :bytes

  field :msg_type, 3,
    type: HyperledgerFabric.Protos.Gossip.PullMsgType,
    json_name: "msgType",
    enum: true
end

defmodule HyperledgerFabric.Protos.Gossip.GossipHello do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GossipHello",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "nonce",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nonce",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "metadata",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "msg_type",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".gossip.PullMsgType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "msgType",
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

  field :nonce, 1, type: :uint64
  field :metadata, 2, type: :bytes

  field :msg_type, 3,
    type: HyperledgerFabric.Protos.Gossip.PullMsgType,
    json_name: "msgType",
    enum: true
end

defmodule HyperledgerFabric.Protos.Gossip.DataUpdate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DataUpdate",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "nonce",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nonce",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "data",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "msg_type",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".gossip.PullMsgType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "msgType",
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

  field :nonce, 1, type: :uint64
  field :data, 2, repeated: true, type: HyperledgerFabric.Protos.Gossip.Envelope

  field :msg_type, 3,
    type: HyperledgerFabric.Protos.Gossip.PullMsgType,
    json_name: "msgType",
    enum: true
end

defmodule HyperledgerFabric.Protos.Gossip.DataDigest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DataDigest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "nonce",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "nonce",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "digests",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "digests",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "msg_type",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".gossip.PullMsgType",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "msgType",
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

  field :nonce, 1, type: :uint64
  field :digests, 2, repeated: true, type: :bytes

  field :msg_type, 3,
    type: HyperledgerFabric.Protos.Gossip.PullMsgType,
    json_name: "msgType",
    enum: true
end

defmodule HyperledgerFabric.Protos.Gossip.DataMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "DataMessage",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Payload",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payload",
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

  field :payload, 1, type: HyperledgerFabric.Protos.Gossip.Payload
end

defmodule HyperledgerFabric.Protos.Gossip.PrivateDataMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PrivateDataMessage",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PrivatePayload",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payload",
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

  field :payload, 1, type: HyperledgerFabric.Protos.Gossip.PrivatePayload
end

defmodule HyperledgerFabric.Protos.Gossip.Payload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Payload",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "seq_num",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "seqNum",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "data",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "data",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "private_data",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "privateData",
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

  field :seq_num, 1, type: :uint64, json_name: "seqNum"
  field :data, 2, type: :bytes
  field :private_data, 3, repeated: true, type: :bytes, json_name: "privateData"
end

defmodule HyperledgerFabric.Protos.Gossip.PrivatePayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PrivatePayload",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "collection_name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collectionName",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "namespace",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "namespace",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "tx_id",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "txId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "private_rwset",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "privateRwset",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "private_sim_height",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "privateSimHeight",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "collection_configs",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".protos.CollectionConfigPackage",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collectionConfigs",
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

  field :collection_name, 1, type: :string, json_name: "collectionName"
  field :namespace, 2, type: :string
  field :tx_id, 3, type: :string, json_name: "txId"
  field :private_rwset, 4, type: :bytes, json_name: "privateRwset"
  field :private_sim_height, 5, type: :uint64, json_name: "privateSimHeight"

  field :collection_configs, 6,
    type: HyperledgerFabric.Protos.Protos.CollectionConfigPackage,
    json_name: "collectionConfigs"
end

defmodule HyperledgerFabric.Protos.Gossip.AliveMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "AliveMessage",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "membership",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Member",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "membership",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "timestamp",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PeerTime",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "timestamp",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "identity",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "identity",
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

  field :membership, 1, type: HyperledgerFabric.Protos.Gossip.Member
  field :timestamp, 2, type: HyperledgerFabric.Protos.Gossip.PeerTime
  field :identity, 4, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gossip.LeadershipMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "LeadershipMessage",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "pki_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pkiId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "timestamp",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PeerTime",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "timestamp",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "is_declaration",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "isDeclaration",
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

  field :pki_id, 1, type: :bytes, json_name: "pkiId"
  field :timestamp, 2, type: HyperledgerFabric.Protos.Gossip.PeerTime
  field :is_declaration, 3, type: :bool, json_name: "isDeclaration"
end

defmodule HyperledgerFabric.Protos.Gossip.PeerTime do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PeerTime",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "inc_num",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "incNum",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "seq_num",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "seqNum",
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

  field :inc_num, 1, type: :uint64, json_name: "incNum"
  field :seq_num, 2, type: :uint64, json_name: "seqNum"
end

defmodule HyperledgerFabric.Protos.Gossip.MembershipRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MembershipRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "self_information",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "selfInformation",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "known",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "known",
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

  field :self_information, 1,
    type: HyperledgerFabric.Protos.Gossip.Envelope,
    json_name: "selfInformation"

  field :known, 2, repeated: true, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gossip.MembershipResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MembershipResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "alive",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "alive",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "dead",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Envelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "dead",
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

  field :alive, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.Envelope
  field :dead, 2, repeated: true, type: HyperledgerFabric.Protos.Gossip.Envelope
end

defmodule HyperledgerFabric.Protos.Gossip.Member do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Member",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "endpoint",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endpoint",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "metadata",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "pki_id",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "pkiId",
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

  field :endpoint, 1, type: :string
  field :metadata, 2, type: :bytes
  field :pki_id, 3, type: :bytes, json_name: "pkiId"
end

defmodule HyperledgerFabric.Protos.Gossip.Empty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Empty",
      field: [],
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
end

defmodule HyperledgerFabric.Protos.Gossip.RemoteStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RemoteStateRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "start_seq_num",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "startSeqNum",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "end_seq_num",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "endSeqNum",
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

  field :start_seq_num, 1, type: :uint64, json_name: "startSeqNum"
  field :end_seq_num, 2, type: :uint64, json_name: "endSeqNum"
end

defmodule HyperledgerFabric.Protos.Gossip.RemoteStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RemoteStateResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "payloads",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.Payload",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payloads",
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

  field :payloads, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.Payload
end

defmodule HyperledgerFabric.Protos.Gossip.RemotePvtDataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RemotePvtDataRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "digests",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PvtDataDigest",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "digests",
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

  field :digests, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.PvtDataDigest
end

defmodule HyperledgerFabric.Protos.Gossip.PvtDataDigest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PvtDataDigest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "tx_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "txId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "namespace",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "namespace",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "collection",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "collection",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "block_seq",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "blockSeq",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "seq_in_block",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "seqInBlock",
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

  field :tx_id, 1, type: :string, json_name: "txId"
  field :namespace, 2, type: :string
  field :collection, 3, type: :string
  field :block_seq, 4, type: :uint64, json_name: "blockSeq"
  field :seq_in_block, 5, type: :uint64, json_name: "seqInBlock"
end

defmodule HyperledgerFabric.Protos.Gossip.RemotePvtDataResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RemotePvtDataResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "elements",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PvtDataElement",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "elements",
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

  field :elements, 1, repeated: true, type: HyperledgerFabric.Protos.Gossip.PvtDataElement
end

defmodule HyperledgerFabric.Protos.Gossip.PvtDataElement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PvtDataElement",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "digest",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".gossip.PvtDataDigest",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "digest",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payload",
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

  field :digest, 1, type: HyperledgerFabric.Protos.Gossip.PvtDataDigest
  field :payload, 2, repeated: true, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gossip.PvtDataPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "PvtDataPayload",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "tx_seq_in_block",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT64,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "txSeqInBlock",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "payload",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "payload",
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

  field :tx_seq_in_block, 1, type: :uint64, json_name: "txSeqInBlock"
  field :payload, 2, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gossip.Acknowledgement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Acknowledgement",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "error",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "error",
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

  field :error, 1, type: :string
end

defmodule HyperledgerFabric.Protos.Gossip.Chaincode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Chaincode",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "name",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "version",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "version",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "metadata",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BYTES,
          type_name: nil,
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

  field :name, 1, type: :string
  field :version, 2, type: :string
  field :metadata, 3, type: :bytes
end

defmodule HyperledgerFabric.Protos.Gossip.Gossip.Service do
  @moduledoc false
  use GRPC.Service, name: "gossip.Gossip", protoc_gen_elixir_version: "0.11.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.ServiceDescriptorProto{
      name: "Gossip",
      method: [
        %Google.Protobuf.MethodDescriptorProto{
          name: "GossipStream",
          input_type: ".gossip.Envelope",
          output_type: ".gossip.Envelope",
          options: nil,
          client_streaming: true,
          server_streaming: true,
          __unknown_fields__: []
        },
        %Google.Protobuf.MethodDescriptorProto{
          name: "Ping",
          input_type: ".gossip.Empty",
          output_type: ".gossip.Empty",
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

  rpc :GossipStream,
      stream(HyperledgerFabric.Protos.Gossip.Envelope),
      stream(HyperledgerFabric.Protos.Gossip.Envelope)

  rpc :Ping, HyperledgerFabric.Protos.Gossip.Empty, HyperledgerFabric.Protos.Gossip.Empty
end

defmodule HyperledgerFabric.Protos.Gossip.Gossip.Stub do
  @moduledoc false
  use GRPC.Stub, service: HyperledgerFabric.Protos.Gossip.Gossip.Service
end