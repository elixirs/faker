defmodule Faker.Color.PtBr do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Brazilian Portuguese
  """

  @doc """
  Returns a random Brazilian Portuguese color name

  ## Examples

      iex> Faker.Color.PtBr.name()
      "Vermelho"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Vermelho",
    "Verde",
    "Preto",
    "Azul",
    "Rosa",
    "Marrom",
    "Laranja",
    "Amarelo",
    "Roxo",
    "Branco"
  ])
end
