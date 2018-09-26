defmodule Faker.UUIDTest do
  use ExUnit.Case, async: true

  doctest Faker.UUID

  test "v4/0" do
    assert Regex.match?(~r/[\da-f]{8}-([\da-f]{4}-){3}[\da-f]{12}/i, Faker.UUID.v4())
  end
end
