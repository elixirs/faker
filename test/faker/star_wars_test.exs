defmodule StarWarsTest do
  use ExUnit.Case, async: true

  test "character/0" do
    assert is_binary(Faker.StarWars.character)
  end

  test "planet/0" do
    assert is_binary(Faker.StarWars.planet)
  end

  test "quote/0" do
    assert is_binary(Faker.StarWars.quote)
  end
end
