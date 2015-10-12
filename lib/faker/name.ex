defmodule Faker.Name do
  @moduledoc """
  Functions for generating names
  """

  @doc """
  Returns a random complete name
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end

  @doc """
  Returns a random first name
  """
  @spec first_name() :: String.t
  def first_name do
    Module.concat(__MODULE__, Faker.mlocale).first_name
  end

  @doc """
  Returns a random last name
  """
  @spec last_name() :: String.t
  def last_name do
    Module.concat(__MODULE__, Faker.mlocale).last_name
  end

  @doc """
  Returns a random name related title
  """
  @spec title() :: String.t
  def title do
    Module.concat(__MODULE__, Faker.mlocale).title
  end

  @doc """
  Returns a random name related suffix
  """
  @spec suffix() :: String.t
  def suffix do
    Module.concat(__MODULE__, Faker.mlocale).suffix
  end

  @doc """
  Returns a random name related prefix
  """
  @spec prefix() :: String.t
  def prefix do
    Module.concat(__MODULE__, Faker.mlocale).prefix
  end
end
