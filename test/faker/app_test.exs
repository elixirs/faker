defmodule AppTest do
  use ExUnit.Case, async: true
  doctest Faker.App

  test "semver/0" do
    Enum.each(0..10_000, fn _ ->
      assert {:ok, %Version{}} = Version.parse(Faker.App.semver())
    end)
  end
end
