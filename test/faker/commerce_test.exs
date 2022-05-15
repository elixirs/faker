defmodule Faker.CommerceTest do
  use ExUnit.Case, async: true

  doctest Faker.Commerce
  doctest Faker.Commerce.En
  doctest Faker.Commerce.Hy
  doctest Faker.Commerce.PtBr

  test "price/0" do
    assert is_float(Faker.Commerce.price())
    assert Faker.Commerce.price() <= 100.0
    assert Faker.Commerce.price() >= 0.0
  end
end
