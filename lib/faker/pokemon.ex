defmodule Faker.Pokemon do
  @moduledoc """
  Function for generating Pokemon
  """

  @doc """
  Returns a ramdom Pokemon name

  ## Examples

      iex> Faker.Pokemon.name()
      "Poliwhirl"
      iex> Faker.Pokemon.name()
      "Exeggcute"
      iex> Faker.Pokemon.name()
      "Flareon"
      iex> Faker.Pokemon.name()
      "Marowak"
  """
  @spec name() :: String.t()
  def name do
    localised_module().name
  end

  @doc """
  Returns a random Pokemon location

  ## Examples

      iex> Faker.Pokemon.location()
      "Vaniville Town"
      iex> Faker.Pokemon.location()
      "Slateport City"
      iex> Faker.Pokemon.location()
      "Shalour City"
      iex> Faker.Pokemon.location()
      "Solaceon Town"
  """
  @spec location() :: String.t()
  def location do
    localised_module().location
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale())
end
