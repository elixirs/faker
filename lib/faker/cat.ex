defmodule Faker.Cat do
  @moduledoc """
  Function for generating Cat names, breeds, and registries
  """

  @doc """
  Returns a ramdom Cat name
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end

  @doc """
  Returns a random Cat breed
  """
  @spec breed() :: String.t
  def breed do
    Module.concat(__MODULE__, Faker.mlocale).breed
  end

  @doc """
  Returns a random Cat registry
  """
  @spec registry() :: String.t
  def registry do
    Module.concat(__MODULE__, Faker.mlocale).registry
  end
end
