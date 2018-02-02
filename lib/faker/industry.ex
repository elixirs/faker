defmodule Faker.Industry do
  @moduledoc """
  Functions for generating Industry related data
  Reference https://en.wikipedia.org/wiki/Industry_Classification_Benchmark
  """

  @doc """
  Returns a Industry name string
  """
  @spec industry() :: String.t
  def industry do
    Module.concat(__MODULE__, Faker.mlocale).industry
  end

  @doc """
  Returns a Super Sector name string
  """
  @spec super_sector() :: String.t
  def super_sector do
    Module.concat(__MODULE__, Faker.mlocale).super_sector
  end

  @doc """
  Returns a Sector name string
  """
  @spec sector() :: String.t
  def sector do
    Module.concat(__MODULE__, Faker.mlocale).sector
  end

  @doc """
  Returns a Sub Sector name string
  """
  @spec sub_sector() :: String.t
  def sub_sector do
    Module.concat(__MODULE__, Faker.mlocale).sub_sector
  end

end
