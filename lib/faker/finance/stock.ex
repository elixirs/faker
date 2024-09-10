defmodule Faker.Finance.Stock do
  alias Faker.Util

  @moduledoc """
  Functions for stock data
  """

  @doc """
  Returns a ticker.

  ## Examples

      iex> Faker.Finance.Stock.ticker()
      "7401.N225"
  """
  @spec ticker() :: String.t()
  def ticker do
    code = :reuters
    exchange = [:nikkei225, :sehk] |> Util.pick()
    ticker(code, exchange)
  end

  @doc """
  The first argument is the ticker format.
  The second argument is the name of the exchange.

  ## Examples

      iex> Faker.Finance.Stock.ticker(:reuters, :nikkei225)
      "2110.N225"

      iex> Faker.Finance.Stock.ticker(:reuters, :sehk)
      "8517.HK"
  """
  def ticker(:reuters, :nikkei225) do
    "#{Faker.random_between(1000, 9999)}.N225"
  end

  def ticker(:reuters, :sehk) do
    stock_str =
      Faker.random_between(1, 8999)
      |> Integer.to_string()
      |> String.pad_leading(4, ["0"])

    "#{stock_str}.HK"
  end
end
