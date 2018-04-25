defmodule Faker.Name do
  @moduledoc """
  Functions for generating names
  """

  @doc """
  Returns a random complete name

  ## Examples

      iex> Faker.Name.name()
      #=> "Mr. Christian Johnston"
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end

  @doc """
  Returns a random first name

  ## Examples

      iex> Faker.Name.first_name()
      #=> "Iva"
  """
  @spec first_name() :: String.t
  def first_name do
    Module.concat(__MODULE__, Faker.mlocale).first_name
  end

  @doc """
  Returns a random last name

  ## Examples

      iex> Faker.Name.last_name()
      #=> "Veum"
  """
  @spec last_name() :: String.t
  def last_name do
    Module.concat(__MODULE__, Faker.mlocale).last_name
  end

  @doc """
  Returns a random name related title

  ## Examples

      iex> Faker.Name.title()
      #=> "Chief Brand Planner"
  """
  @spec title() :: String.t
  def title do
    Module.concat(__MODULE__, Faker.mlocale).title
  end

  @doc """
  Returns a random name related suffix

  ## Examples

      iex> Faker.Name.suffix()
      #=> "III"
  """
  @spec suffix() :: String.t
  def suffix do
    Module.concat(__MODULE__, Faker.mlocale).suffix
  end

  @doc """
  Returns a random name related prefix

  ## Examples

      iex> Faker.Name.prefix()
      #=> "Miss"
  """
  @spec prefix() :: String.t
  def prefix do
    Module.concat(__MODULE__, Faker.mlocale).prefix
  end
end
