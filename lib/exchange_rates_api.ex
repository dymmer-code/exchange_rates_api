defmodule ExchangeRatesApi do
  use Tesla
  require Logger
  alias ExchangeRatesApi.Cache

  plug Tesla.Middleware.BaseUrl, "https://api.exchangeratesapi.io"
  plug Tesla.Middleware.Headers, [{"content-type", "application/json"}]
  plug Tesla.Middleware.JSON

  @ttl 3600

  def convert(from, to) do
    case Cache.get({:convert, from, to}) do
      nil ->
        data = convert_call(from, to)
        Cache.set({:convert, from, to}, data, on_conflict: :replace, ttl: @ttl)
      data ->
        data
    end
  end

  def convert_call(from, to) do
    case get("/latest", query: [symbols: to, base: from]) do
      {:ok, resp} ->
        Logger.debug "resp (ok) => #{inspect resp.body}"
        resp.body["rates"][to]
      {:error, _} = error -> error
    end
  end
end
