defmodule Faker.Name do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating names
  """

  @doc """
  Returns a random complete name

  ## Examples

      iex> Faker.Name.name()
      "Mrs. Abe Rolfson MD"
      iex> Faker.Name.name()
      "Conor Padberg"
      iex> Faker.Name.name()
      "Mr. Bianka Ryan"
      iex> Faker.Name.name()
      "Ally Rau MD"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random first name

  ## Examples

      iex> Faker.Name.first_name()
      "Joany"
      iex> Faker.Name.first_name()
      "Elizabeth"
      iex> Faker.Name.first_name()
      "Abe"
      iex> Faker.Name.first_name()
      "Ozella"
  """
  @spec first_name() :: String.t()
  localize(:first_name)

  @doc """
  Returns a random last name

  ## Examples

      iex> Faker.Name.last_name()
      "Blick"
      iex> Faker.Name.last_name()
      "Hayes"
      iex> Faker.Name.last_name()
      "Schumm"
      iex> Faker.Name.last_name()
      "Rolfson"
  """
  @spec last_name() :: String.t()
  localize(:last_name)

  @doc """
  Returns a random name related title

  ## Examples

      iex> Faker.Name.title()
      "Dynamic Identity Administrator"
      iex> Faker.Name.title()
      "Product Communications Technician"
      iex> Faker.Name.title()
      "Legacy Accountability Architect"
      iex> Faker.Name.title()
      "Customer Data Representative"
  """
  @spec title() :: String.t()
  localize(:title)

  @doc """
  Returns a random name related suffix

  ## Examples

      iex> Faker.Name.suffix()
      "II"
      iex> Faker.Name.suffix()
      "V"
      iex> Faker.Name.suffix()
      "V"
      iex> Faker.Name.suffix()
      "V"
  """
  @spec suffix() :: String.t()
  localize(:suffix)

  @doc """
  Returns a random name related prefix

  ## Examples

      iex> Faker.Name.prefix()
      "Mr."
      iex> Faker.Name.prefix()
      "Mrs."
      iex> Faker.Name.prefix()
      "Mr."
      iex> Faker.Name.prefix()
      "Dr."
  """
  @spec prefix() :: String.t()
  localize(:prefix)
end
