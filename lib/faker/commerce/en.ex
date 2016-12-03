defmodule Faker.Commerce.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Fuctions for generating commerce related data in English
  """

  @doc """
  Returns a random color
  """
  @spec color() :: String.t
  sampler :color, ["azure", "black", "blue", "cyan", "fuchsia", "gold", "green", "grey", "indigo", "ivory", "lavender", "lime", "magenta", "maroon", "mint green", "olive", "orange", "orchid", "pink", "plum", "purple", "red", "salmon", "silver", "sky blue", "tan", "teal", "turquoise", "violet", "white", "yellow"]

  @doc """
  Returns a random department
  """
  @spec department() :: String.t
  sampler :department, ["Books", "Movies, Music & Games", "Electronics & Computers", "Home, Garden & Tools", "Grocery, Health & Beauty", "Toys, Kids & Baby", "Clothing, Shoes & Jewelery", "Sports & Outdoors", "Automotive & Industrial"]

  @doc """
  Returns a complete product name, based on product adjectives, product
  materials, product names
  """
  @spec product_name() :: String.t
  def product_name do
    product_name(:crypto.rand_uniform(0, 3))
  end

  defp product_name(0) do
    "#{product_name_adjective()} #{product_name_material()} #{product_name_product()}"
  end
  defp product_name(1), do: "#{product_name_adjective()} #{product_name_product()}"
  defp product_name(2), do: "#{product_name_material()} #{product_name_product()}"

  @doc """
  Returns a random adjective for a product
  """
  @spec product_name_adjective() :: String.t
  sampler :product_name_adjective, ["Small", "Ergonomic", "Rustic", "Intelligent", "Gorgeous", "Incredible", "Fantastic", "Practical", "Sleek", "Awesome"]

  @doc """
  Returns a random product material
  """
  @spec product_name_material() :: String.t
  sampler :product_name_material, ["Steel", "Wooden", "Concrete", "Plastic", "Cotton", "Granite", "Rubber"]

  @doc """
  Returns a random product name
  """
  @spec product_name_product() :: String.t
  sampler :product_name_product, ["Chair", "Car", "Computer", "Gloves", "Pants", "Shirt", "Table", "Shoes", "Hat"]
end
