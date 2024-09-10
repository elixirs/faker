defmodule Faker.Food do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating food data.
  """

  @doc """
  Returns a random complete dish.

  ## Examples

      iex> Faker.Food.dish()
      "Ricotta stuffed Ravioli"
  """
  @spec dish() :: String.t()
  localize(:dish)

  @doc """
  Returns a random description.

  ## Examples

      iex> Faker.Food.description()
      "Two buttermilk waffles, topped with whipped cream and maple syrup, a side of two eggs served any style, and your choice of smoked bacon or smoked ham."
  """
  @spec description() :: String.t()
  localize(:description)

  @doc """
  Returns a random ingredient.

  ## Examples

      iex> Faker.Food.ingredient()
      "Bocconcini"
  """
  @spec ingredient() :: String.t()
  localize(:ingredient)

  @doc """
  Returns a random spicy ingredient.

  ## Examples

      iex> Faker.Food.spice()
      "Curry Mild"
  """
  @spec spice() :: String.t()
  localize(:spice)

  @doc """
  Returns a random measurement.

  ## Examples

      iex> Faker.Food.measurement()
      "pint"
  """
  @spec measurement() :: String.t()
  localize(:measurement)

  @doc """
  Returns a random measurement size.

  ## Examples

      iex> Faker.Food.measurement_size()
      "1/4"
  """
  @spec measurement_size() :: String.t()
  localize(:measurement_size)

  @doc """
  Returns a random metric measurement.

  ## Examples

      iex> Faker.Food.metric_measurement()
      "liter"
  """
  @spec metric_measurement() :: String.t()
  localize(:metric_measurement)

  @doc """
  Returns a type of sushi.

  ## Examples

      iex> Faker.Food.sushi()
      "Sea bream"
  """
  @spec sushi() :: String.t()
  localize(:sushi)
end
