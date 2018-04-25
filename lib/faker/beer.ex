defmodule Faker.Beer do
  @moduledoc """
  Functions for generating Beer related data
  """

  @doc """
  Returns a Beer name string

  ## Examples

      iex> Faker.Beer.name()
      #=> "Hercules Double IPA"
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end

  @doc """
  Returns a Hop name string

  ## Examples

      iex> Faker.Beer.hop()
      #=> "Equinox"
  """
  @spec hop() :: String.t
  def hop do
    Module.concat(__MODULE__, Faker.mlocale).hop
  end

  @doc """
  Returns a Yeast name string

  ## Examples

      iex> Faker.Beer.yeast()
      #=> "2278 - Czech Pils"
  """
  @spec yeast() :: String.t
  def yeast do
    Module.concat(__MODULE__, Faker.mlocale).yeast
  end

  @doc """
  Returns a Malt name string

  ## Examples

      iex> Faker.Beer.malt()
      #=> "Rye malt"
  """
  @spec malt() :: String.t
  def malt do
    Module.concat(__MODULE__, Faker.mlocale).malt
  end

  @doc """
  Returns a Style name string

  ## Examples

      iex> Faker.Beer.style()
      #=> "Belgian Strong Ale"
  """
  @spec style() :: String.t
  def style do
    Module.concat(__MODULE__, Faker.mlocale).style
  end

  @doc """
  Returns an IBU(International Bitterness Unit) for a beer

  ## Examples

      iex> Faker.Beer.ibu()
      #=> "40 IBU"
  """
  @spec ibu :: String.t
  def ibu do
    "#{Faker.random_between(5, 120)} IBU"
  end

  @doc """
  Returns an alcohol percentage for a beer

  ## Examples

      iex> Faker.Beer.alcohol()
      #=> "6.3%"
  """
  @spec alcohol :: String.t
  def alcohol do
    random_float() <> "%"
  end

  @doc """
  Returns a blg for a beer

  ## Examples

      iex> Faker.Beer.blg()
      #=> "18.5°Blg"
  """
  @spec blg :: String.t
  def blg do
    random_float() <> "°Blg"
  end

  defp random_float do
    "#{Faker.random_between(0, 99)}.#{Faker.random_between(0, 9)}"
  end
end
