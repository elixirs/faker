defmodule Faker.Beer do
  @moduledoc """
  Functions for generating Beer related data
  """

  @doc """
  Returns a Beer name string
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end

  @doc """
  Returns a Hop name string
  """
  @spec hop() :: String.t
  def hop do
    Module.concat(__MODULE__, Faker.mlocale).hop
  end

  @doc """
  Returns a Yeast name string
  """
  @spec yeast() :: String.t
  def yeast do
    Module.concat(__MODULE__, Faker.mlocale).yeast
  end

  @doc """
  Returns a Malt name string
  """
  @spec malt() :: String.t
  def malt do
    Module.concat(__MODULE__, Faker.mlocale).malt
  end

  @doc """
  Returns a Style name string
  """
  @spec style() :: String.t
  def style do
    Module.concat(__MODULE__, Faker.mlocale).style
  end

  @doc """
  Returns an IBU(International Bitterness Unit) for a beer
  """
  @spec ibu :: String.t
  def ibu do
     "#{:crypto.rand_uniform(5,120)} UBI"
  end

  @doc """
  Returns an alcohol percentage for a beer
  """
  @spec alcohol :: String.t
  def alcohol do
    random_float() <> "%"
  end

  @doc """
  Returns a blg for a beer
  """
  @spec blg :: String.t
  def blg do
    random_float() <> "°Blg"
  end

  defp random_float do
    "#{:crypto.rand_uniform(0,99)}.#{:crypto.rand_uniform(0,9)}"
  end
end
