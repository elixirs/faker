defmodule Faker.Dwelling.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating Dwelling related data in English
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
  @spec dwelling_type() :: String.t()
  sampler(:dwelling_type, [
    "Bungalow",
    "Cabin",
    "Casa Particular",
    "Chalet",
    "Cottage",
    "Cycladic house",
    "Dammuso",
    "Dome house",
    "Earth house",
    "House",
    "Houseboat",
    "Hut",
    "Lighthouse",
    "Pension",
    "Shepard's hut",
    "Tiny house",
    "Townhouse",
    "Trulio",
    "Villa",
  ])
end
