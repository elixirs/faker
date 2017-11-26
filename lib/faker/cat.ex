defmodule Faker.Cat do
  @moduledoc """
  Function for generating Cat names, breeds, and registries
  """

  @doc """
  Returns a ramdom Cat name

  ## Examples

      iex> Faker.Cat.name()
      #=> "Shadow"
  """
  @spec name() :: String.t()
  def name do
    Module.concat(__MODULE__, Faker.mlocale()).name
  end

  @doc """
  Returns a random Cat breed

  ## Examples

      iex> Faker.Cat.breed()
      #=> "British Semipi-longhair"
  """
  @spec breed() :: String.t()
  def breed do
    Module.concat(__MODULE__, Faker.mlocale()).breed
  end

  @doc """
  Returns a random Cat registry

  ## Examples

      iex> Faker.Cat.registry()
      #=> "American Cat Fanciers Association"
  """
  @spec registry() :: String.t()
  def registry do
    Module.concat(__MODULE__, Faker.mlocale()).registry
  end
end
