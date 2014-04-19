defmodule CommerceTest do
  use ExUnit.Case, async: true

  test :color do
    assert is_binary(Faker.Commerce.color)
  end

  test :department do
    assert is_binary(Faker.Commerce.department)
  end

  test :price do
    assert is_float(Faker.Commerce.price)
    assert Faker.Commerce.price <= 100.0
    assert Faker.Commerce.price >= 0.0
  end

  test :product_name do
    assert is_binary(Faker.Commerce.product_name)
  end

  test :product_name_adjective do
    assert is_binary(Faker.Commerce.product_name_adjective)
  end

  test :product_name_material do
    assert is_binary(Faker.Commerce.product_name_material)
  end

  test :product_name_product do
    assert is_binary(Faker.Commerce.product_name_product)
  end
end
