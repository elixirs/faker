defmodule Faker.Color.PtBr do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for color data in Brazilian Portuguese
  """

  @doc """
  Returns a random brazilian portuguese color name
  """
  @spec name() :: String.t
  sampler :name, ["Vermelho", "Verde", "Preto", "Azul", "Rosa", "Marrom", "Laranja", "Amarelo", "Roxo", "Branco"]
end
