defmodule Faker.Vine do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating Vine related data
  """

  @doc """
  Returns a Vine strain string

  ## Examples

      iex> Faker.Vine.strain()
      "Lola"
      iex> Faker.Vine.strain()
      "Len De L'el"
      iex> Faker.Vine.strain()
      "Villard Blanc"
      iex> Faker.Vine.strain()
      "Bouchales"
  """
  @spec strain() :: String.t()
  localize(:strain)
end
