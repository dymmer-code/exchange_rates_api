use Mix.Config

config :exchange_rates_api, ExchangeRatesApi.Cache,
  adapter: Nebulex.Adapters.Local,
  n_shards: 2,
  gc_interval: 3600,
  write_concurrency: true
