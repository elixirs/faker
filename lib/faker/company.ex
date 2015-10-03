defmodule Faker.Company do
  @moduledoc """
  Functions for generating company names and related stuff
  """

  @doc """
  Returns a random complete business related bullshit
  """
  @spec bs() :: String.t
  def bs do
    Module.concat(__MODULE__, Faker.mlocale).bs
  end

  @doc """
  Returns a random business related bullshit
  """
  @spec bullshit() :: String.t
  def bullshit do
    Module.concat(__MODULE__, Faker.mlocale).bullshit
  end

  @doc """
  Returns a random business related bullshit prefix
  """
  @spec bullshit_prefix() :: String.t
  def bullshit_prefix do
    Module.concat(__MODULE__, Faker.mlocale).bullshit_prefix
  end

  @doc """
  Returns a random business related bullshit suffix
  """
  @spec bullshit_suffix() :: String.t
  def bullshit_suffix do
    Module.concat(__MODULE__, Faker.mlocale).bullshit_suffix
  end

  @doc """
  Returns a random business related buzzword
  """
  @spec buzzword() :: String.t
  def buzzword do
    Module.concat(__MODULE__, Faker.mlocale).buzzword
  end

  @doc """
  Returns a random business related buzzword prefix
  """
  @spec buzzword_prefix() :: String.t
  def buzzword_prefix do
    Module.concat(__MODULE__, Faker.mlocale).buzzword_prefix
  end

  @doc """
  Returns a random business related buzzword suffix
  """
  @spec buzzword_suffix() :: String.t
  def buzzword_suffix do
    Module.concat(__MODULE__, Faker.mlocale).buzzword_suffix
  end

  @doc """
  Returns a random complete catch phrase
  """
  @spec catch_phrase() :: String.t
  def catch_phrase do
    Module.concat(__MODULE__, Faker.mlocale).catch_phrase
  end

  @doc """
  Returns complete company name
  """
  @spec name() :: String.t
  def name do
    Module.concat(__MODULE__, Faker.mlocale).name
  end

  @doc """
  Returns a random type of business entity
  """
  @spec suffix() :: String.t
  def suffix do
    Module.concat(__MODULE__, Faker.mlocale).suffix
  end
end
