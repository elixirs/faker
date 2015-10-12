defmodule Faker.Commerce.En do
  @moduledoc """
  Fuctions for generating commerce related data in English
  """

  @data ["azure", "black", "blue", "cyan", "fuchsia", "gold", "green", "grey", "indigo", "ivory", "lavender", "lime", "magenta", "maroon", "mint green", "olive", "orange", "orchid", "pink", "plum", "purple", "red", "salmon", "silver", "sky blue", "tan", "teal", "turquoise", "violet", "white", "yellow"]
  @data_count Enum.count(@data)
  @doc """
  Returns a random color
  """
  @spec color() :: String.t
  def color do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["Books", "Movies, Music & Games", "Electronics & Computers", "Home, Garden & Tools", "Grocery, Health & Beauty", "Toys, Kids & Baby", "Clothing, Shoes & Jewelery", "Sports & Outdoors", "Automotive & Industrial"]
  @data_count Enum.count(@data)
  @doc """
  Returns a random department
  """
  @spec department() :: String.t
  def department do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @doc """
  Returns a complete product name, based on product adjectives, product materials, product names
  """
  @spec product_name() :: String.t
  def product_name do
    product_name(:crypto.rand_uniform(0, 3))
  end

  defp product_name(0), do: "#{product_name_adjective} #{product_name_material} #{product_name_product}"
  defp product_name(1), do: "#{product_name_adjective} #{product_name_product}"
  defp product_name(2), do: "#{product_name_material} #{product_name_product}"

  @data ["Small", "Ergonomic", "Rustic", "Intelligent", "Gorgeous", "Incredible", "Fantastic", "Practical", "Sleek", "Awesome"]
  @data_count Enum.count(@data)
  @doc """
  Returns a random adjective for a product
  """
  @spec product_name_adjective() :: String.t
  def product_name_adjective do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["Steel", "Wooden", "Concrete", "Plastic", "Cotton", "Granite", "Rubber"]
  @data_count Enum.count(@data)
  @doc """
  Returns a random product material
  """
  @spec product_name_material() :: String.t
  def product_name_material do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["Chair", "Car", "Computer", "Gloves", "Pants", "Shirt", "Table", "Shoes", "Hat"]
  @data_count Enum.count(@data)
  @doc """
  Returns a random product name
  """
  @spec product_name_product() :: String.t
  def product_name_product do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end
end
