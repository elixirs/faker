defmodule Faker.Food do
  @moduledoc """
  Functions for generating food data
  """

  @doc """
  Returns a random complete dish
  """
  @spec dish() :: String.t
  def dish do
    Module.concat(__MODULE__, Faker.mlocale).dish
  end

  @doc """
  Returns a random description
  """
  @spec description() :: String.t
  def description do
    Module.concat(__MODULE__, Faker.mlocale).description
  end

  @doc """
  Returns a random ingredient
  """
  @spec ingredient() :: String.t
  def ingredient do
    Module.concat(__MODULE__, Faker.mlocale).ingredient
  end

  @doc """
  Returns a random spicy ingredient
  """
  @spec spice() :: String.t
  def spice do
    Module.concat(__MODULE__, Faker.mlocale).spice
  end

  @doc """
  Returns a random measurement
  """
  @spec measurement() :: String.t
  def measurement do
    Module.concat(__MODULE__, Faker.mlocale).measurement
  end

  @doc """
  Returns a random measurement size
  """
  @spec measurement_size() :: String.t
  def measurement_size do
    Module.concat(__MODULE__, Faker.mlocale).measurement_size
  end

  @doc """
  Returns a random measurement size
  """
  @spec metric_measurement() :: String.t
  def metric_measurement do
    Module.concat(__MODULE__, Faker.mlocale).metric_measurement
  end
end
