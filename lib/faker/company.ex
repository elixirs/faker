defmodule Faker.Company do
  @moduledoc """
  Functions for generating company names and related stuff
  """

  @doc """
  Returns a random complete business related bullshit

  ## Examples

      iex> Faker.Company.bs()
      #=> "enable next-generation markets"
  """
  @spec bs() :: String.t()
  def bs do
    Module.concat(__MODULE__, Faker.mlocale()).bs
  end

  @doc """
  Returns a random business related bullshit

  ## Examples

      iex> Faker.Company.bullshit()
      #=> "value-added"
  """
  @spec bullshit() :: String.t()
  def bullshit do
    Module.concat(__MODULE__, Faker.mlocale()).bullshit
  end

  @doc """
  Returns a random business related bullshit prefix

  ## Examples

      iex> Faker.Company.bullshit_prefix()
      #=> "recontextualize"
  """
  @spec bullshit_prefix() :: String.t()
  def bullshit_prefix do
    Module.concat(__MODULE__, Faker.mlocale()).bullshit_prefix
  end

  @doc """
  Returns a random business related bullshit suffix

  ## Examples

      iex> Faker.Company.bullshit_suffix()
      #=> "technologies"
  """
  @spec bullshit_suffix() :: String.t()
  def bullshit_suffix do
    Module.concat(__MODULE__, Faker.mlocale()).bullshit_suffix
  end

  @doc """
  Returns a random business related buzzword

  ## Examples

      iex> Faker.Company.buzzword()
      #=> "composite"
  """
  @spec buzzword() :: String.t()
  def buzzword do
    Module.concat(__MODULE__, Faker.mlocale()).buzzword
  end

  @doc """
  Returns a random business related buzzword prefix

  ## Examples

      iex> Faker.Company.buzzword_prefix()
      #=> "Up-sized"
  """
  @spec buzzword_prefix() :: String.t()
  def buzzword_prefix do
    Module.concat(__MODULE__, Faker.mlocale()).buzzword_prefix
  end

  @doc """
  Returns a random business related buzzword suffix

  ## Examples

      iex> Faker.Company.buzzword_suffix()
      #=> "paradigm"
  """
  @spec buzzword_suffix() :: String.t()
  def buzzword_suffix do
    Module.concat(__MODULE__, Faker.mlocale()).buzzword_suffix
  end

  @doc """
  Returns a random complete catch phrase

  ## Examples

      iex> Faker.Company.catch_phrase()
      #=> "Profound stable strategy"
  """
  @spec catch_phrase() :: String.t()
  def catch_phrase do
    Module.concat(__MODULE__, Faker.mlocale()).catch_phrase
  end

  @doc """
  Returns complete company name

  ## Examples

      iex> Faker.Company.name()
      #=> "Erdman, Rogahn and Bailey"
  """
  @spec name() :: String.t()
  def name do
    Module.concat(__MODULE__, Faker.mlocale()).name
  end

  @doc """
  Returns a random type of business entity

  ## Examples

      iex> Faker.Company.suffix()
      #=> "Group"
  """
  @spec suffix() :: String.t()
  def suffix do
    Module.concat(__MODULE__, Faker.mlocale()).suffix
  end
end
