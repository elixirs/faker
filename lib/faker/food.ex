defmodule Faker.Food do
  @moduledoc """
  Functions for generating food data.
  """

  @doc """
  Returns a random complete dish.

  ## Examples

      iex> Faker.Food.dish()
      "Vegetable Soup"
      iex> Faker.Food.dish()
      "Fish and chips"
      iex> Faker.Food.dish()
      "Pork belly buns"
  """
  @spec dish() :: String.t()
  def dish do
    Module.concat(__MODULE__, Faker.mlocale()).dish
  end

  @doc """
  Returns a random description.

  ## Examples

      iex> Faker.Food.description()
      "Two buttermilk waffles, topped with whipped cream and maple syrup, a side of two eggs served any style, and your choice of smoked bacon or smoked ham."
      iex> Faker.Food.description()
      "28-day aged 300g USDA Certified Prime Ribeye, rosemary-thyme garlic butter, with choice of two sides."
      iex> Faker.Food.description()
      "Breaded fried chicken with waffles, and a side of maple syrup."
  """
  @spec description() :: String.t()
  def description do
    Module.concat(__MODULE__, Faker.mlocale()).description
  end

  @doc """
  Returns a random ingredient.

  ## Examples

      iex> Faker.Food.ingredient()
      "Tomatoes"
      iex> Faker.Food.ingredient()
      "Albacore Tuna"
      iex> Faker.Food.ingredient()
      "Potatoes"
  """
  @spec ingredient() :: String.t()
  def ingredient do
    Module.concat(__MODULE__, Faker.mlocale()).ingredient
  end

  @doc """
  Returns a random spicy ingredient.

  ## Examples

      iex> Faker.Food.spice()
      "Garlic Salt"
      iex> Faker.Food.spice()
      "Ras-el-Hanout"
      iex> Faker.Food.spice()
      "Curry Hot"
  """
  @spec spice() :: String.t()
  def spice do
    Module.concat(__MODULE__, Faker.mlocale()).spice
  end

  @doc """
  Returns a random measurement.

  ## Examples

      iex> Faker.Food.measurement()
      "teaspoon"
      iex> Faker.Food.measurement()
      "gallon"
      iex> Faker.Food.measurement()
      "pint"
  """
  @spec measurement() :: String.t()
  def measurement do
    Module.concat(__MODULE__, Faker.mlocale()).measurement
  end

  @doc """
  Returns a random measurement size.

  ## Examples

      iex> Faker.Food.measurement_size()
      "1/4"
      iex> Faker.Food.measurement_size()
      "3"
      iex> Faker.Food.measurement_size()
      "1"
  """
  @spec measurement_size() :: String.t()
  def measurement_size do
    Module.concat(__MODULE__, Faker.mlocale()).measurement_size
  end

  @doc """
  Returns a random metric measurement.

  ## Examples

      iex> Faker.Food.metric_measurement()
      "centiliter"
      iex> Faker.Food.metric_measurement()
      "deciliter"
      iex> Faker.Food.metric_measurement()
      "liter"
  """
  @spec metric_measurement() :: String.t()
  def metric_measurement do
    Module.concat(__MODULE__, Faker.mlocale()).metric_measurement
  end
end
