defmodule Faker.Cat do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating Cat names, breeds, and registries
  """

  @doc """
  Return a random Cat name

  ## Examples

      iex> Faker.Cat.name()
      "Felix"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Return a random Cat breed

  ## Examples

      iex> Faker.Cat.breed()
      "Mekong Bobtail"
  """
  @spec breed() :: String.t()
  localize(:breed)

  @doc """
  Return a random Cat registry

  ## Examples

      iex> Faker.Cat.registry()
      "Felis Britannica"
  """
  @spec registry() :: String.t()
  localize(:registry)
end
