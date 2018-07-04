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
      iex> Faker.Food.dish()
      "Pasta Carbonara"
  """
  @spec dish() :: String.t()
  def dish do
    localised_module().dish
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
      iex> Faker.Food.description()
      "Creamy mascarpone cheese and custard layered between espresso and rum soaked house-made ladyfingers, topped with Valrhona cocoa powder."
  """
  @spec description() :: String.t()
  def description do
    localised_module().description
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
      iex> Faker.Food.ingredient()
      "Tinned"
  """
  @spec ingredient() :: String.t()
  def ingredient do
    localised_module().ingredient
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
      iex> Faker.Food.spice()
      "Peppercorns Mixed"
  """
  @spec spice() :: String.t()
  def spice do
    localised_module().spice
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
      iex> Faker.Food.measurement()
      "cup"
  """
  @spec measurement() :: String.t()
  def measurement do
    localised_module().measurement
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
      iex> Faker.Food.measurement_size()
      "1/2"
  """
  @spec measurement_size() :: String.t()
  def measurement_size do
    localised_module().measurement_size
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
      iex> Faker.Food.metric_measurement()
      "milliliter"
  """
  @spec metric_measurement() :: String.t()
  def metric_measurement do
    localised_module().metric_measurement
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale())
end
