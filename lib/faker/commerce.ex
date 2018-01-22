defmodule Faker.Commerce do
  @moduledoc """
  Functions for generating commerce related data
  """

  @doc """
  Returns a random color

  ## Examples

      iex> Faker.Commerce.color()
      #=> "maroon"
  """
  @spec color() :: String.t
  def color do
    Module.concat(__MODULE__, Faker.mlocale).color
  end

  @doc """
  Returns a random department

  ## Examples

      iex> Faker.Commerce.department()
      #=> "Sports & Outdoors"
  """
  @spec department() :: String.t
  def department do
    Module.concat(__MODULE__, Faker.mlocale).department
  end

  @doc """
  Returns a random number that represents a price

  ## Examples

      iex> Faker.Commerce.price()
      #=> "3.5"
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
      #=> "Fantastic Chair"
  """
  @spec product_name() :: String.t
  def product_name do
    Module.concat(__MODULE__, Faker.mlocale).product_name
  end

  @doc """
  Returns a random adjective for a product

  ## Examples

      iex> Faker.Commerce.product_name_adjective()
      #=> "Incredible"
  """
  @spec product_name_adjective() :: String.t
  def product_name_adjective do
    Module.concat(__MODULE__, Faker.mlocale).product_name_adjective
  end

  @doc """
  Returns a random product material

  ## Examples

      iex> Faker.Commerce.product_name_material()
      #=> "Wooden"
  """
  @spec product_name_material() :: String.t
  def product_name_material do
    Module.concat(__MODULE__, Faker.mlocale).product_name_material
  end

  @doc """
  Returns a random product name

  ## Examples

      iex> Faker.Commerce.product_name_product()
      #=> "Gloves"
  """
  @spec product_name_product() :: String.t
  def product_name_product do
    Module.concat(__MODULE__, Faker.mlocale).product_name_product
  end
end
