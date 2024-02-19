defmodule Faker.Tolkien do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating J.R.R Tolkien legendarium data.
  """

  @doc """
  Returns a random J.R.R. Tolkien race

  ## Examples

      iex> Faker.Tolkien.race()
      "Uruk-hai"
      iex> Faker.Tolkien.race()
      "Trolls"
      iex> Faker.Tolkien.race()
      "Half-trolls"
      iex> Faker.Tolkien.race()
      "Vampire"
  """
  @spec race() :: String.t()
  localize(:race)

  @doc """
  Returns a random J.R.R. Tolkien poem name

  ## Examples

      iex> Faker.Tolkien.poem()
      "A Elbereth Gilthoniel"
      iex> Faker.Tolkien.poem()
      "The Road Goes Ever On and On"
      iex> Faker.Tolkien.poem()
      "Arise, arise, Riders of Theoden!"
      iex> Faker.Tolkien.poem()
      "A Rhyme of Lore"
  """
  @spec poem() :: String.t()
  localize(:poem)

  @doc """
  Returns a random Tolkien name

  ## Examples

      iex> Faker.Tolkien.name()
      "Tar-Amandil"
      iex> Faker.Tolkien.name()
      "Saradas Brandybuck"
      iex> Faker.Tolkien.name()
      "Reginard Took"
      iex> Faker.Tolkien.name()
      "Bereg"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random Tolkien location

  ## Examples

      iex> Faker.Tolkien.location()
      "Bree-land"
      iex> Faker.Tolkien.location()
      "Buckland"
      iex> Faker.Tolkien.location()
      "River of Aros"
      iex> Faker.Tolkien.location()
      "Dimrill Gate"
  """
  @spec location() :: String.t()
  localize(:location)
end
