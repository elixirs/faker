defmodule Faker.Beer do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating Beer related data
  """

  @doc """
  Returns a Beer brand string

  ## Examples

      iex> Faker.Beer.brand()
      "Birra Moretti"
      iex> Faker.Beer.brand()
      "Quimes"
  """
  @spec brand() :: String.t()
  localize(:brand)

  @doc """
  Returns a Beer name string

  ## Examples

      iex> Faker.Beer.name()
      "Oak Aged Yeti Imperial Stout"
      iex> Faker.Beer.name()
      "Duvel"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a Hop name string

  ## Examples

      iex> Faker.Beer.hop()
      "Mosaic"
      iex> Faker.Beer.hop()
      "Chelan"
  """
  @spec hop() :: String.t()
  localize(:hop)

  @doc """
  Returns a Yeast name string

  ## Examples

      iex> Faker.Beer.yeast()
      "3711 - French Saison"
      iex> Faker.Beer.yeast()
      "1332 - Northwest Ale"
  """
  @spec yeast() :: String.t()
  localize(:yeast)

  @doc """
  Returns a Malt name string

  ## Examples

      iex> Faker.Beer.malt()
      "Chocolate malt"
      iex> Faker.Beer.malt()
      "Special roast"
  """
  @spec malt() :: String.t()
  localize(:malt)

  @doc """
  Returns a Style name string

  ## Examples

      iex> Faker.Beer.style()
      "English Pale Ale"
      iex> Faker.Beer.style()
      "Light Hybrid Beer"
  """
  @spec style() :: String.t()
  localize(:style)

  @doc """
  Returns an IBU(International Bitterness Unit) for a beer

  ## Examples

      iex> Faker.Beer.ibu()
      "65 IBU"
      iex> Faker.Beer.ibu()
      "104 IBU"
  """
  @spec ibu :: String.t()
  def ibu do
    "#{Faker.random_between(5, 120)} IBU"
  end

  @doc """
  Returns an alcohol percentage for a beer

  ## Examples

      iex> Faker.Beer.alcohol()
      "60.3%"
      iex> Faker.Beer.alcohol()
      "34.5%"
  """
  @spec alcohol :: String.t()
  def alcohol do
    random_float() <> "%"
  end

  @doc """
  Returns a blg for a beer

  ## Examples

      iex> Faker.Beer.blg()
      "60.3°Blg"
      iex> Faker.Beer.blg()
      "34.5°Blg"
  """
  @spec blg :: String.t()
  def blg do
    random_float() <> "°Blg"
  end

  defp random_float do
    "#{Faker.random_between(0, 99)}.#{Faker.random_between(0, 9)}"
  end
end
