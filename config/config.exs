import Config

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
