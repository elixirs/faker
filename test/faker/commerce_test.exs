defmodule Faker.CommerceTest do
  use ExUnit.Case, async: true

  doctest Faker.Commerce
  doctest Faker.Commerce.Am
  doctest Faker.Commerce.En

  test "price/0" do
    assert is_float(Faker.Commerce.price())
    assert Faker.Commerce.price() <= 100.0
    assert Faker.Commerce.price() >= 0.0
  end
end
