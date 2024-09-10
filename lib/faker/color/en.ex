defmodule Faker.Color.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in English
  """

  @doc """
  Returns a random English color name

  ## Examples

      iex> Faker.Color.En.name()
      "Red"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Red",
    "Green",
    "Black",
    "Blue",
    "Pink",
    "Brown",
    "Orange",
    "Yellow",
    "Purple",
    "White"
  ])

  @doc """
  Returns a random English fancy color name

  ## Examples

      iex> Faker.Color.En.fancy_name()
      "Tawny"
  """
  @spec fancy_name() :: String.t()
  sampler(:fancy_name, [
    "Cesious",
    "Citrine",
    "Damson",
    "Greige",
    "Luteous",
    "Ochre",
    "Tawny",
    "Watchet"
  ])
end
