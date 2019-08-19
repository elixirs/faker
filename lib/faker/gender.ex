defmodule Faker.Gender do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating gender data
  """

  @doc """
  Returns a gender name (male/female)

  ## Examples

      iex> Faker.Gender.name()
      "male"
      iex> Faker.Gender.name()
      "female"
  """
  @spec name() :: String.t()
  def name, do: name(Faker.random_between(0, 1))
  defp name(0), do: "male"
  defp name(1), do: "female"
end