defmodule Faker.Commerce do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating commerce related data
  """

  @doc """
  Returns a random color

  ## Examples

      iex> Faker.Commerce.color()
      "turquoise"
  """
  @spec color() :: String.t()
  localize(:color)

  @doc """
  Returns a random department

  ## Examples

      iex> Faker.Commerce.department()
      "Home, Garden & Tools"
  """
  @spec department() :: String.t()
  localize(:department)

  @doc """
  Returns a random number that represents a price

  ## Examples

      iex> Faker.Commerce.price()
      0.61
  """
  @spec price() :: float
  def price do
    Faker.random_between(1, 1000) / 100.0
  end

  @doc """
  Returns a complete product name, based on product adjectives, product
  materials, product names

  ## Examples

      iex> Faker.Commerce.product_name()
      "Ergonomic Steel Shirt"
  """
  @spec product_name() :: String.t()
  localize(:product_name)

  @doc """
  Returns a random adjective for a product

  ## Examples

      iex> Faker.Commerce.product_name_adjective()
      "Small"
  """
  @spec product_name_adjective() :: String.t()
  localize(:product_name_adjective)

  @doc """
  Returns a random product material

  ## Examples

      iex> Faker.Commerce.product_name_material()
      "Rubber"
  """
  @spec product_name_material() :: String.t()
  localize(:product_name_material)

  @doc """
  Returns a random product name

  ## Examples

      iex> Faker.Commerce.product_name_product()
      "Shoes"
  """
  @spec product_name_product() :: String.t()
  localize(:product_name_product)
end
