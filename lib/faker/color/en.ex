defmodule Faker.Color.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in English
  """

  @doc """
  Returns a random english color name
  """
  @spec name() :: String.t
  sampler :name, ["Red", "Green", "Blue", "Pink", "Brown", "Orange", "Yellow", "Purple"]

  @doc """
  Returns a random english fancy color name
  """
  @spec fancy_name() :: String.t
  sampler :fancy_name, ["Cesious", "Citrine", "Damson", "Greige", "Luteous", "Ochre", "Tawny", "Watchet"]
end
