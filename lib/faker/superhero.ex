defmodule Faker.Superhero do
  @moduledoc """
  Functions for generating Superhero data
  """

  @doc """
  Returns a random Superhero name

  ## Examples

      iex> Faker.Superhero.name()
      "Red Beyonder the Hunter"
      iex> Faker.Superhero.name()
      "Penance Strike"
      iex> Faker.Superhero.name()
      "Sage"
      iex> Faker.Superhero.name()
      "Giant Aqua I"
  """
  @spec name() :: String.t()
  def name do
    localised_module().name
  end

  @doc """
  Returns a random Superher name prefix

  ## Examples

      iex> Faker.Superhero.prefix()
      "The"
      iex> Faker.Superhero.prefix()
      "Red"
      iex> Faker.Superhero.prefix()
      "The"
      iex> Faker.Superhero.prefix()
      "Captain"
  """
  @spec prefix() :: String.t()
  def prefix do
    localised_module().prefix
  end

  @doc """
  Returns a random Superhero name suffix

  ## Examples

      iex> Faker.Superhero.suffix()
      "Strange"
      iex> Faker.Superhero.suffix()
      "Claw"
      iex> Faker.Superhero.suffix()
      "the Hunter"
      iex> Faker.Superhero.suffix()
      "the Hunter"
  """
  @spec suffix() :: String.t()
  def suffix do
    localised_module().suffix
  end

  @doc """
  Returns a random Superhero descriptor

  ## Examples

      iex> Faker.Superhero.descriptor()
      "Ronin"
      iex> Faker.Superhero.descriptor()
      "Azrael"
      iex> Faker.Superhero.descriptor()
      "Beyonder"
      iex> Faker.Superhero.descriptor()
      "Phantom"
  """
  @spec descriptor() :: String.t()
  def descriptor do
    localised_module().descriptor
  end

  @doc """
  Returns a random Superhero power

  ## Examples

      iex> Faker.Superhero.power()
      "Death Touch"
      iex> Faker.Superhero.power()
      "Shapeshifting"
      iex> Faker.Superhero.power()
      "Gliding"
      iex> Faker.Superhero.power()
      "Illusions"
  """
  @spec power() :: String.t()
  def power do
    localised_module().power
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale())
end
