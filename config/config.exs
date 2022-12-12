import Config

config :hyperledger_fabric,
  # Fabric CA settings
  ca_url: "https://localhost:7054/enroll",
  ca_name: "ca.org1.example.com",
  ca_username: "admin",
  ca_password: "adminpw",

  # MSP settings
  msp_id: "Org1MSP",

  # Chaincode settings
  # Default to JAVA as per your implementation
  chaincode_type: :JAVA,
  # Configurable chaincode version
  chaincode_version: 1,

  # Channel settings
  channel_id: "mychannel",
  chaincode_id: "mycc",

  # Network settings
  orderers: [
    %{
      host: "localhost:7050",
      tls_cert_path:
        "crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt",
      ssl_target_name_override: "orderer.example.com"
    }
  ],
  peers: [
    %{
      host: "localhost:7051",
      tls_cert_path:
        "crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt",
      ssl_target_name_override: "peer0.org1.example.com"
    }
  ],
  orderer_timeout: 30_000,
  ecdsa_signature_record_path: "public_key/include/public_key.hrl"

# MachineGun config
config :machine_gun,
  # Default pool group
  default: %{
    # Poolboy size
    pool_size: 4,
    # Poolboy max_overflow
    pool_max_overflow: 4,
    pool_timeout: 1000,
    request_timeout: 5000,
    # Gun connection options
    conn_opts: %{}
  }
