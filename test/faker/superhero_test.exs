defmodule SuperheroTest do
  use ExUnit.Case, async: true

  test "name/0" do
    assert is_binary(Faker.Superhero.name)
  end

  test "prefix/0" do
    assert is_binary(Faker.Superhero.prefix)
  end

  test "suffix/0" do
    assert is_binary(Faker.Superhero.suffix)
  end

  test "descriptor/0" do
    assert is_binary(Faker.Superhero.descriptor)
  end

  test "power/0" do
    assert is_binary(Faker.Superhero.power)
  end
end