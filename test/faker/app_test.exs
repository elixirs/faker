defmodule AppTest do
  use ExUnit.Case, async: true

  test "author/0" do
    assert is_binary(Faker.App.author)
  end

  test "name/0" do
    assert is_binary(Faker.App.name)
  end

  test "version/0" do
    assert is_binary(Faker.App.version)
  end

  test "semver/0" do
    assert is_binary(Faker.App.semver)
  end
end
