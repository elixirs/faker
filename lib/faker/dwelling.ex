defmodule Faker.Dwelling do 
  import Faker, only: [localize: 1]


  @moduledoc """
  Functions for generating Dwelling related data
  """

  @doc """
  Returns a dwelling type string

  ## Examples 
      iex> Faker.Dwelling.dwelling_type()
      "Cycladic house"
      iex> Faker.Dwelling.dwelling_type()
      "Shepard's hut"
      iex> Faker.Dwelling.dwelling_type()
      "Cycladic house"
      iex> Faker.Dwelling.dwelling_type()
      "Earth house"
  """

  @spec dwelling_type :: String.t()
  localize(:dwelling_type)

end
