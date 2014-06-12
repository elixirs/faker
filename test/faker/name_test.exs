defmodule TeamTest do
  use ExUnit.Case, async: true

  test "creature/0" do
    assert is_binary(Faker.Team.creature)
  end

  test "name/0" do
    assert is_binary(Faker.Team.name)
  end
end
