defmodule Faker.Superhero do
  @moduledoc """
  Functions for generating Superhero data
  """

  @doc """
  Returns a random Superhero name
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end

  @doc """
  Returns a random Superher name prefix
  """
  @spec prefix() :: String.t
  def prefix do
    Module.concat(__MODULE__, Faker.mlocale).prefix
  end

  @doc """
  Returns a random Superhero name suffix
  """
  @spec suffix() :: String.t
  def suffix do
    Module.concat(__MODULE__, Faker.mlocale).suffix
  end

  @doc """
  Returns a random Superhero descriptor
  """
  @spec descriptor() :: String.t
  def descriptor do
    Module.concat(__MODULE__, Faker.mlocale).descriptor
  end

  @doc """
  Returns a random Superhero power
  """
  @spec power() :: String.t
  def power do
    Module.concat(__MODULE__, Faker.mlocale).power
  end
end