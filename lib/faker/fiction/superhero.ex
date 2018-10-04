defmodule Faker.Fiction.Superhero do
  @moduledoc """
  Functions for generating Superhero data
  """

  @doc """
  Returns a random Superhero name

  ## Examples

      iex> Faker.Fiction.Superhero.name()
      "Red Beyonder the Hunter"
      iex> Faker.Fiction.Superhero.name()
      "Penance Strike"
      iex> Faker.Fiction.Superhero.name()
      "Sage"
      iex> Faker.Fiction.Superhero.name()
      "Giant Aqua I"
  """
  @spec name() :: String.t()
  def name do
    localised_module().name
  end

  @doc """
  Returns a random Superher name prefix

  ## Examples

      iex> Faker.Fiction.Superhero.prefix()
      "The"
      iex> Faker.Fiction.Superhero.prefix()
      "Red"
      iex> Faker.Fiction.Superhero.prefix()
      "The"
      iex> Faker.Fiction.Superhero.prefix()
      "Captain"
  """
  @spec prefix() :: String.t()
  def prefix do
    localised_module().prefix
  end

  @doc """
  Returns a random Superhero name suffix

  ## Examples

      iex> Faker.Fiction.Superhero.suffix()
      "Strange"
      iex> Faker.Fiction.Superhero.suffix()
      "Claw"
      iex> Faker.Fiction.Superhero.suffix()
      "the Hunter"
      iex> Faker.Fiction.Superhero.suffix()
      "the Hunter"
  """
  @spec suffix() :: String.t()
  def suffix do
    localised_module().suffix
  end

  @doc """
  Returns a random Superhero descriptor

  ## Examples

      iex> Faker.Fiction.Superhero.descriptor()
      "Ronin"
      iex> Faker.Fiction.Superhero.descriptor()
      "Azrael"
      iex> Faker.Fiction.Superhero.descriptor()
      "Beyonder"
      iex> Faker.Fiction.Superhero.descriptor()
      "Phantom"
  """
  @spec descriptor() :: String.t()
  def descriptor do
    localised_module().descriptor
  end

  @doc """
  Returns a random Superhero power

  ## Examples

      iex> Faker.Fiction.Superhero.power()
      "Death Touch"
      iex> Faker.Fiction.Superhero.power()
      "Shapeshifting"
      iex> Faker.Fiction.Superhero.power()
      "Gliding"
      iex> Faker.Fiction.Superhero.power()
      "Illusions"
  """
  @spec power() :: String.t()
  def power do
    localised_module().power
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale())
end
