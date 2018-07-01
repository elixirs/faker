defmodule Faker.Superhero do
  @moduledoc """
  Functions for generating Superhero data
  """

  @doc """
  Returns a random Superhero name

  ## Examples

      iex> Faker.Superhero.name()
      #=> "Magnificent Shatterstar"
  """
  @spec name() :: String.t()
  def name do
    Module.concat(__MODULE__, Faker.mlocale()).name
  end

  @doc """
  Returns a random Superher name prefix

  ## Examples

      iex> Faker.Superhero.prefix()
      #=> "Magnificent"
  """
  @spec prefix() :: String.t()
  def prefix do
    Module.concat(__MODULE__, Faker.mlocale()).prefix
  end

  @doc """
  Returns a random Superhero name suffix

  ## Examples

      iex> Faker.Superhero.suffix()
      #=> "of Hearts"
  """
  @spec suffix() :: String.t()
  def suffix do
    Module.concat(__MODULE__, Faker.mlocale()).suffix
  end

  @doc """
  Returns a random Superhero descriptor

  ## Examples

      iex> Faker.Superhero.descriptor()
      #=> "Angel"
  """
  @spec descriptor() :: String.t()
  def descriptor do
    Module.concat(__MODULE__, Faker.mlocale()).descriptor
  end

  @doc """
  Returns a random Superhero power

  ## Examples

      iex> Faker.Superhero.power()
      #=> "Photokinesis"
  """
  @spec power() :: String.t()
  def power do
    Module.concat(__MODULE__, Faker.mlocale()).power
  end
end
