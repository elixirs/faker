defmodule Faker.Industry do
  @moduledoc """
  Functions for generating Industry related data
  Reference https://en.wikipedia.org/wiki/Industry_Classification_Benchmark
  """

  @doc """
  Returns a Industry name string

  ## Examples

      iex> Faker.Industry.industry
      #=> "Basic Materials"
  """
  @spec industry() :: String.t
  def industry do
    Module.concat(__MODULE__, Faker.mlocale).industry
  end

  @doc """
  Returns a Super Sector name string

  ## Examples

      iex> Faker.Industry.super_sector
      #=> "Basic Resources"
  """
  @spec super_sector() :: String.t
  def super_sector do
    Module.concat(__MODULE__, Faker.mlocale).super_sector
  end

  @doc """
  Returns a Sector name string

  ## Examples

      iex> Faker.Industry.sector
      #=> "Industrial Metals & Mining"
  """
  @spec sector() :: String.t
  def sector do
    Module.concat(__MODULE__, Faker.mlocale).sector
  end

  @doc """
  Returns a Sub Sector name string

  ## Examples

      iex> Faker.Industry.sub_sector
      #=> "Nonferrous Metals"
  """
  @spec sub_sector() :: String.t
  def sub_sector do
    Module.concat(__MODULE__, Faker.mlocale).sub_sector
  end

end
