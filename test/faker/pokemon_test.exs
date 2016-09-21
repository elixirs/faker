defmodule PokemonTest do
  use ExUnit.Case, async: true

  test "name/0" do
    assert is_binary(Faker.Pokemon.name)
  end

  test "location/0" do
    assert is_binary(Faker.Pokemon.location)
  end
end