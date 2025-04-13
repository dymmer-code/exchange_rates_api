> [!WARNING]
> When I started with this library, the website offered more than 1k requests per month, it was reduced to 100 so, it's not usable for some projects, keep it that in mind if you want to use it.
> 
> In addition, during the time I didn't like to use so much dependencies and Nebulex wasn't my preference these days for cache so, I guess you can create the API for yourself if you want, it's not so difficult. You have here an example.
> 
> Based on everything of this, I decided to discontinued the support and development for this API integration, use it on your own.

# ExchangeRatesApi

Implementation for the API available in this site: https://exchangeratesapi.io/

This uses [Tesla]() library to make easier the access to the endpoint and [Nebulex]() for the cache and avoid to perform so many queries to the service.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `exchange_rates_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:exchange_rates_api, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/exchange_rates_api](https://hexdocs.pm/exchange_rates_api).

## Usage

```elixir
ExchangeRatesApi.convert_call "USD", "EUR"
# 0.876545
```

Enjoy!
