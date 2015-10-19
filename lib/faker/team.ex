defmodule Faker.Team do
  @moduledoc """
  Functions for generating team related data
  """

  @doc """
  Returns a string of the form [state] [creature]
  """
  @spec creature() :: String.t
  def creature do
    Module.concat(__MODULE__, Faker.mlocale).creature
  end

  @doc"""
  Returns a random creature name
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end
end
