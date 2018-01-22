defmodule Faker.Pokemon do
  @moduledoc """
  Function for generating Pokemon
  """

  @doc """
  Returns a ramdom Pokemon name

  ## Examples

      iex> Faker.Pokemon.name()
      #=> "Pikachu"
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end

  @doc """
  Returns a random Pokemon location

  ## Examples

      iex> Faker.Pokemon.location()
      #=> "Pallet Town"
  """
  @spec location() :: String.t
  def location do
    Module.concat(__MODULE__, Faker.mlocale).location
  end
end
