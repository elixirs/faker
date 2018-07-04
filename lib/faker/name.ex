defmodule Faker.Name do
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
  def name do
    localised_module().name
  end

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
  def first_name do
    localised_module().first_name
  end

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
  def last_name do
    localised_module().last_name
  end

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
  def title do
    localised_module().title
  end

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
  def suffix do
    localised_module().suffix
  end

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
  def prefix do
    localised_module().prefix
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale())
end
