defmodule Faker.CryptoCoin do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating Crypto Coin names, acronym and url_logo
  """

  @doc """
  Return a random Crypto Coin name

  ## Examples

      iex> Faker.CryptoCoin.name()
      "Dash"
      iex> Faker.CryptoCoin.name()
      "Bitcoin Gold"
      iex> Faker.CryptoCoin.name()
      "Bitcoin"
      iex> Faker.CryptoCoin.name()
      "Cardano"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Bitcoin",
    "Bitcoin Cash",
    "Bitcoin Gold",
    "Bitcoin SV",
    "Binance Coin",
    "Cardano",
    "Dash",
    "Decred",
    "EOS.IO",
    "Ethereum",
    "Ethereum Classic",
    "IOTA",
    "Litecoin",
    "Monero",
    "NEM",
    "NEO",
    "Ripple",
    "Stellar",
    "Tether",
    "TRON",
    "Zcash"
  ])

  @doc """
  Return a random Crypto Coin acronym

  ## Examples

      iex> Faker.CryptoCoin.acronym()
      "DASH"
      iex> Faker.CryptoCoin.acronym()
      "BTG"
      iex> Faker.CryptoCoin.acronym()
      "BTC"
      iex> Faker.CryptoCoin.acronym()
      "ADA"
  """

  @spec acronym() :: String.t()
  sampler(:acronym, [
    "BTC",
    "BCC",
    "BTG",
    "BSV",
    "BNB",
    "ADA",
    "DASH",
    "DCR",
    "EOS",
    "ETH",
    "ETC",
    "IOT",
    "LTC",
    "XMR",
    "XEM",
    "NEO",
    "XRP",
    "XLM",
    "USDT",
    "TRX",
    "ZEC"
  ])

  @doc """
  Return a random Crypto Coin url_logo

  ## Examples

      iex> Faker.CryptoCoin.url_logo()
      "https://i.imgur.com/2uX91cb.png"
      iex> Faker.CryptoCoin.url_logo()
      "https://i.imgur.com/l9cVE7c.png"
      iex> Faker.CryptoCoin.url_logo()
      "https://i.imgur.com/psBNOBq.png"
      iex> Faker.CryptoCoin.url_logo()
      "https://i.imgur.com/8qGU4zg.png"
  """
  @spec url_logo() :: String.t()
  sampler(:url_logo, [
    "https://i.imgur.com/psBNOBq.png",
    "https://i.imgur.com/ViTjr9u.png",
    "https://i.imgur.com/l9cVE7c.png",
    "https://i.imgur.com/DkixrAc.png",
    "https://i.imgur.com/2HJr7OR.png",
    "https://i.imgur.com/8qGU4zg.png",
    "https://i.imgur.com/2uX91cb.png",
    "https://i.imgur.com/nURXAC2.png",
    "https://i.imgur.com/Cr2w77s.png",
    "https://i.imgur.com/uOPFCXj.png",
    "https://i.imgur.com/8wBtmQA.png",
    "https://i.imgur.com/DGFCOVt.png",
    "https://i.imgur.com/EFz61Ei.png",
    "https://i.imgur.com/pnupcJM.png",
    "https://i.imgur.com/SJ8NteF.png",
    "https://i.imgur.com/BmtVrJi.png",
    "https://i.imgur.com/GjAPSsL.png",
    "https://i.imgur.com/COLIHUE.png",
    "https://i.imgur.com/xk6pQZy.png",
    "https://i.imgur.com/grG05ZK.png",
    "https://i.imgur.com/mX3r4j9.png"
  ])
end
