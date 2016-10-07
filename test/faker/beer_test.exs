defmodule BeerTest do
  use ExUnit.Case, async: true

  test "name/0" do
    assert is_binary(Faker.Beer.name)
  end

  test "hop/0" do
    assert is_binary(Faker.Beer.hop)
  end

  test "yeast/0" do
    assert is_binary(Faker.Beer.yeast)
  end

  test "malt/0" do
    assert is_binary(Faker.Beer.malt)
  end

  test "style/0" do
    assert is_binary(Faker.Beer.style)
  end
end
