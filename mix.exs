defmodule HyperledgerFabric.MixProject do
  use Mix.Project

  def project do
    [
      app: :hyperledger_fabric,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:machine_gun, "~> 0.1.8"},
      {:grpc, "~> 0.5.0"},
      {:gun, "~> 2.0.0-rc.1", override: true},
      {:protobuf, "~> 0.11"},
      {:x509, "~> 0.8.5"},
      {:jason, "~> 1.4"}
    ]
  end
end
