defmodule Faker.Team do
  @moduledoc """
  Functions for generating team related data
  """

  @doc """
  Returns a string of the form [state] [creature]

  ## Examples

      iex> Faker.Team.name()
      "Hawaii cats"
      iex> Faker.Team.name()
      "Oklahoma banshees"
      iex> Faker.Team.name()
      "Texas elves"
      iex> Faker.Team.name()
      "Iowa fishes"
  """
  @spec creature() :: String.t()
  def creature do
    Module.concat(__MODULE__, Faker.mlocale()).creature
  end

  @doc """
  Returns a random creature name

  ## Examples

      iex> Faker.Team.creature()
      "prophets"
      iex> Faker.Team.creature()
      "cats"
      iex> Faker.Team.creature()
      "enchanters"
      iex> Faker.Team.creature()
      "banshees"
  """
  @spec name() :: String.t()
  def name do
    Module.concat(__MODULE__, Faker.mlocale()).name
  end
end
