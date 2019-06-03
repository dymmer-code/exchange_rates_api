defmodule ExchangeRatesApi.Cache do
  use Nebulex.Cache, otp_app: :exchange_rates_api,
                     adapter: Application.get_env(:exchange_rates_api,
                                                  ExchangeRatesApi.Cache,
                                                  [adapter: Nebulex.Adapters.Local])[:adapter]
end
