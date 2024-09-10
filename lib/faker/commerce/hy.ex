defmodule Faker.Commerce.Hy do
  import Faker, only: [sampler: 2]
  alias Faker.Color.Hy, as: Color

  @moduledoc """
  Fuctions for generating commerce related data in Armenian
  """

  @doc """
  Returns a random color.

  ## Examples

      iex> Faker.Commerce.Hy.color()
      "մոխրագույն"
  """
  @spec color() :: String.t()
  def color do
    Color.name()
  end

  @doc """
  Returns a random department.

  ## Examples

      iex> Faker.Commerce.Hy.department()
      "Համակարգիչներ"
  """
  @spec department() :: String.t()
  sampler(:department, [
    "Գրքեր",
    "Ֆիլմեր",
    "Երաժշտություն",
    "Խաղեր",
    "Խաղալիքեր",
    "Էլեկտրոնիկա",
    "Համակարգիչներ",
    "Ապրանքներ Տան Համար",
    "Ապրանքներ Այգեգործության Համար",
    "Գործիքներ",
    "Նպարեղեն",
    "Առողջապահական Ապրանքներ",
    "Կոսմետիկ Ապրանքներ",
    "Մանկական Ապրանքներ",
    "Ապրանքներ Նորածինների Համար",
    "Հագուստ",
    "Կոշկեղեն",
    "Ոսկերչական Իրեր",
    "Սպորտային Ապրանքներ",
    "Ավտոմոբիլների Պահեստամասեր",
    "Արդյունաբերական Ապրանքներ"
  ])

  @doc """
  Returns a complete product name, based on product adjectives, product
  materials and product names.

  ## Examples

      iex> Faker.Commerce.Hy.product_name()
      "հիանալի բրոնզե գլխարկ"
  """
  @spec product_name() :: String.t()
  def product_name, do: product_name(Faker.random_between(0, 2))

  defp product_name(0) do
    "#{product_name_adjective()} #{product_name_material()} #{product_name_product()}"
  end

  defp product_name(1), do: "#{product_name_adjective()} #{product_name_product()}"
  defp product_name(2), do: "#{product_name_material()} #{product_name_product()}"

  @doc """
  Returns a random adjective for a product.

  ## Examples

      iex> Faker.Commerce.Hy.product_name_adjective()
      "ֆանտաստիկ"
  """
  @spec product_name_adjective() :: String.t()
  sampler(:product_name_adjective, [
    "փոքր",
    "Էրգոնիկ",
    "հասարակ",
    "խելացի",
    "շքեղ",
    "ցնցող",
    "ֆանտաստիկ",
    "պրակտիկ",
    "նրբագեղ",
    "հիանալի",
    "հսկայական",
    "միջակ",
    "դիմացկուն",
    "թեթև",
    "աերոդինամիկ",
    "ամուր"
  ])

  @doc """
  Returns a random product material.

  ## Examples

      iex> Faker.Commerce.Hy.product_name_material()
      "փայտե"
  """
  @spec product_name_material() :: String.t()
  sampler(:product_name_material, [
    "պողպատե",
    "փայտե",
    "բետոնե",
    "պլաստիկից",
    "բամբակե",
    "գրանիտե",
    "ռետինե",
    "կաշվե",
    "մետաքսե",
    "բրդյա",
    "քաթանե",
    "մարմարե",
    "երկաթե",
    "բրոնզե",
    "պղնձյա",
    "ալյումինե",
    "թղթե"
  ])

  @doc """
  Returns a random product name.

  ## Examples

      iex> Faker.Commerce.Hy.product_name_product()
      "վերնաշապիկ"
  """
  @spec product_name_product() :: String.t()
  sampler(:product_name_product, [
    "աթոռ",
    "ավտոմեքենա",
    "համակարգիչ",
    "ձեռնոց",
    "շալվար",
    "վերնաշապիկ",
    "սեղան",
    "կոշիկ",
    "գլխարկ",
    "ափսե",
    "դանակ",
    "շիշ",
    "վերարկու",
    "լամպ",
    "ստեղնաշար",
    "պայուսակ",
    "նստարան",
    "ժամացույց",
    "դրամապանակ"
  ])
end
