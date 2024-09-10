defmodule Faker.Color.Es do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Spanish
  """

  @doc """
  Returns a random spanish color name

  ## Examples

      iex> Faker.Color.Es.name()
      "Rojo"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Rojo",
    "Verde",
    "Negro",
    "Azul",
    "Rosa",
    "Marrón",
    "Laranja",
    "Amarillo",
    "Morado",
    "Blanco"
  ])
end
