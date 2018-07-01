defmodule Faker.StarWars do
  @moduledoc """
  Functions for generating StarWars related data
  """

  @doc """
  Returns a Star Wars character name

  ## Examples

      iex> Faker.StarWars.character()
      #=> "Luke Skywalker"
  """
  @spec character() :: String.t()
  def character do
    Module.concat(__MODULE__, Faker.mlocale()).character
  end

  @doc """
  Returns a Star Wars planet name

  ## Examples

      iex> Faker.StarWars.planet()
      #=> "Alderaan"
  """
  @spec planet() :: String.t()
  def planet do
    Module.concat(__MODULE__, Faker.mlocale()).planet
  end

  @doc """
  Returns a Star Wars quote

  ## Examples

      iex> Faker.StarWars.quote()
      #=> "I've got a bad feeling about this."
  """
  @spec quote() :: String.t()
  def quote do
    Module.concat(__MODULE__, Faker.mlocale()).quote
  end
end
