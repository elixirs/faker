defmodule Faker.Color.It do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Italian
  """

  @doc """
  Returns a random Italian color name

  ## Examples

      iex> Faker.Color.It.name()
      "Rosso"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Rosso",
    "Verde",
    "Nero",
    "Azzurro",
    "Rosa",
    "Marrone",
    "Arancio",
    "Giallo",
    "Viola",
    "Bianco"
  ])
end
