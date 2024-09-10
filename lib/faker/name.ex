defmodule Faker.Name do
  alias Faker.Person

  @moduledoc """
  Deprecated. Faker.Name will be removed in 1.0.0. Please use Faker.Person instead.
  """

  @doc """
  Returns a random complete name

  ## Examples

      iex> Faker.Name.name()
      "Mrs. Abe Rolfson MD"
  """
  @deprecated "Use Faker.Person.name/0 instead."
  @spec name() :: String.t()
  def name, do: Person.name()

  @doc """
  Returns a random first name

  ## Examples

      iex> Faker.Name.first_name()
      "Joany"
  """
  @deprecated "Use Faker.Person.first_name/0 instead."
  @spec first_name() :: String.t()
  def first_name, do: Person.first_name()

  @doc """
  Returns a random last name

  ## Examples

      iex> Faker.Name.last_name()
      "Blick"
  """
  @deprecated "Use Faker.Person.last_name/0 instead."
  @spec last_name() :: String.t()
  def last_name, do: Person.last_name()

  @doc """
  Returns a random name related title

  ## Examples

      iex> Faker.Name.title()
      "Dynamic Identity Administrator"
  """
  @deprecated "Use Faker.Person.title/0 instead."
  @spec title() :: String.t()
  def title, do: Person.title()

  @doc """
  Returns a random name related suffix

  ## Examples

      iex> Faker.Name.suffix()
      "II"
  """
  @deprecated "Use Faker.Person.suffix/0 instead."
  @spec suffix() :: String.t()
  def suffix, do: Person.suffix()

  @doc """
  Returns a random name related prefix

  ## Examples

      iex> Faker.Name.prefix()
      "Mr."
  """
  @deprecated "Use Faker.Person.prefix/0 instead."
  @spec prefix() :: String.t()
  def prefix, do: Person.prefix()
end
