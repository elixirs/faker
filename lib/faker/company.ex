defmodule Faker.Company do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating company names and related stuff
  """

  @doc """
  Returns a random complete business related bullshit

  ## Examples

      iex> Faker.Company.bs()
      "syndicate e-business e-business"
  """
  @spec bs() :: String.t()
  localize(:bs)

  @doc """
  Returns a random business related bullshit

  ## Examples

      iex> Faker.Company.bullshit()
      "plug-and-play"
  """
  @spec bullshit() :: String.t()
  localize(:bullshit)

  @doc """
  Returns a random business related bullshit prefix

  ## Examples

      iex> Faker.Company.bullshit_prefix()
      "grow"
  """
  @spec bullshit_prefix() :: String.t()
  localize(:bullshit_prefix)

  @doc """
  Returns a random business related bullshit suffix

  ## Examples

      iex> Faker.Company.bullshit_suffix()
      "e-services"
  """
  @spec bullshit_suffix() :: String.t()
  localize(:bullshit_suffix)

  @doc """
  Returns a random business related buzzword

  ## Examples

      iex> Faker.Company.buzzword()
      "upward-trending"
  """
  @spec buzzword() :: String.t()
  localize(:buzzword)

  @doc """
  Returns a random business related buzzword prefix

  ## Examples

      iex> Faker.Company.buzzword_prefix()
      "Configurable"
  """
  @spec buzzword_prefix() :: String.t()
  localize(:buzzword_prefix)

  @doc """
  Returns a random business related buzzword suffix

  ## Examples

      iex> Faker.Company.buzzword_suffix()
      "encoding"
  """
  @spec buzzword_suffix() :: String.t()
  localize(:buzzword_suffix)

  @doc """
  Returns a random complete catch phrase

  ## Examples

      iex> Faker.Company.catch_phrase()
      "Configurable full-range Graphical User Interface"
  """
  @spec catch_phrase() :: String.t()
  localize(:catch_phrase)

  @doc """
  Returns complete company name

  ## Examples

      iex> Faker.Company.name()
      "Cartwright and Sons"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Returns a random type of business entity

  ## Examples

      iex> Faker.Company.suffix()
      "Inc"
  """
  @spec suffix() :: String.t()
  localize(:suffix)
end
