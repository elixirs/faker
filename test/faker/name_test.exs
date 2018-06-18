defmodule Faker.NameTest do
  use ExUnit.Case, async: true

  doctest Faker.Name.En
  doctest Faker.Name.Es
  doctest Faker.Name.PtBr

  test "first_name/0" do
    assert is_binary(Faker.Name.first_name())
  end

  test "last_name/0" do
    assert is_binary(Faker.Name.last_name())
  end

  test "name/0" do
    assert is_binary(Faker.Name.name())
  end

  test "prefix/0" do
    assert is_binary(Faker.Name.prefix())
  end

  test "suffix/0" do
    assert is_binary(Faker.Name.suffix())
  end

  test "title/0" do
    assert is_binary(Faker.Name.title())
  end
end
