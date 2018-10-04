defmodule Faker.Fiction.Pokemon do
  @moduledoc """
  Function for generating Pokemon
  """

  @doc """
  Returns a random Pokemon name

  ## Examples

      iex> Faker.Fiction.Pokemon.name()
      "Poliwhirl"
      iex> Faker.Fiction.Pokemon.name()
      "Exeggcute"
      iex> Faker.Fiction.Pokemon.name()
      "Flareon"
      iex> Faker.Fiction.Pokemon.name()
      "Marowak"
  """
  @spec name() :: String.t()
  def name do
    localised_module().name
  end

  @doc """
  Returns a random Pokemon location

  ## Examples

      iex> Faker.Fiction.Pokemon.location()
      "Vaniville Town"
      iex> Faker.Fiction.Pokemon.location()
      "Slateport City"
      iex> Faker.Fiction.Pokemon.location()
      "Shalour City"
      iex> Faker.Fiction.Pokemon.location()
      "Solaceon Town"
  """
  @spec location() :: String.t()
  def location do
    localised_module().location
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale())
end
