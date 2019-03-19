defmodule ExchangeRatesApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :exchange_rates_api,
      version: "0.1.0-rc.1",
      name: "ExchangeRatesApi",
      description: "Exchange Rates API",
      package: package(),
      source_url: "https://github.com/altenwald/exchange_rates_api",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {ExchangeRatesApi.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, ">= 1.0.0"},
      {:tesla, "~> 1.1.0"},
      {:nebulex, "~> 1.0.0-rc.3"},

      {:excoveralls, "~> 0.10.3", only: :test},
      {:ex_doc, "~> 0.19.0", only: :dev},
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "mix.lock", "README*", "COPYING*"],
      maintainers: ["Manuel Rubio"],
      licenses: ["LGPL 2.1"],
      links: %{"GitHub" => "https://github.com/altenwald/exchange_rates_api"},
    ]
  end

  defp aliases do
    [
      test: ["coveralls.json"]
    ]
  end
end
