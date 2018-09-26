defmodule Faker.Industry do
  @moduledoc """
  Functions for generating Industry related data
  Reference https://en.wikipedia.org/wiki/Industry_Classification_Benchmark
  """

  @doc """
  Returns a Industry name string

  ## Examples

      iex> Faker.Industry.industry
      "Oil & Gas"
      iex> Faker.Industry.industry
      "Health Care"
      iex> Faker.Industry.industry
      "Consumer Services"
      iex> Faker.Industry.industry
      "Telecommunications"
  """
  @spec industry() :: String.t()
  def industry do
    localised_module().industry
  end

  @doc """
  Returns a Super Sector name string

  ## Examples

      iex> Faker.Industry.super_sector
      "Media"
      iex> Faker.Industry.super_sector
      "Banks"
      iex> Faker.Industry.super_sector
      "Chemicals"
      iex> Faker.Industry.super_sector
      "Oil & Gas"
  """
  @spec super_sector() :: String.t()
  def super_sector do
    localised_module().super_sector
  end

  @doc """
  Returns a Sector name string

  ## Examples

      iex> Faker.Industry.sector
      "Beverages"
      iex> Faker.Industry.sector
      "Chemicals"
      iex> Faker.Industry.sector
      "Industrial Engineering"
      iex> Faker.Industry.sector
      "Mining"
  """
  @spec sector() :: String.t()
  def sector do
    localised_module().sector
  end

  @doc """
  Returns a Sub Sector name string

  ## Examples

      iex> Faker.Industry.sub_sector()
      "General Mining"
      iex> Faker.Industry.sub_sector()
      "Defense"
      iex> Faker.Industry.sub_sector()
      "ÊPaper"
      iex> Faker.Industry.sub_sector()
      "Pipelines"
  """
  @spec sub_sector() :: String.t()
  def sub_sector do
    localised_module().sub_sector
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale())
end
