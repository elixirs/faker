defmodule CatTest do
  use ExUnit.Case, async: true

  test "name/0" do
    assert is_binary(Faker.Cat.name)
  end

  test "breed/0" do
    assert is_binary(Faker.Cat.breed)
  end

  test "registry/0" do
    assert is_binary(Faker.Cat.registry)
  end
end