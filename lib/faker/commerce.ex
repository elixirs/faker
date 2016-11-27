defmodule Faker.Commerce do
  @moduledoc """
  Functions for generating commerce related data
  """

  @doc """
  Returns a random color
  """
  @spec color() :: String.t
  def color do
    Module.concat(__MODULE__, Faker.mlocale).color
  end

  @doc """
  Returns a random department
  """
  @spec department() :: String.t
  def department do
    Module.concat(__MODULE__, Faker.mlocale).department
  end

  @doc """
  Returns a random number that represents a price
  """
  @spec price() :: float
  def price do
    :crypto.rand_uniform(1, 1001) / 100.0
  end

  @doc """
  Returns a complete product name, based on product adjectives, product
  materials, product names
  """
  @spec product_name() :: String.t
  def product_name do
    Module.concat(__MODULE__, Faker.mlocale).product_name
  end

  @doc """
  Returns a random adjective for a product
  """
  @spec product_name_adjective() :: String.t
  def product_name_adjective do
    Module.concat(__MODULE__, Faker.mlocale).product_name_adjective
  end

  @doc """
  Returns a random product material
  """
  @spec product_name_material() :: String.t
  def product_name_material do
    Module.concat(__MODULE__, Faker.mlocale).product_name_material
  end

  @doc """
  Returns a random product name
  """
  @spec product_name_product() :: String.t
  def product_name_product do
    Module.concat(__MODULE__, Faker.mlocale).product_name_product
  end
end
