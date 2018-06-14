defmodule Faker.Name.PtBrTest do
  use ExUnit.Case, async: true
  
  test "first_name/0" do
    assert is_binary(Faker.Name.first_name)
  end

  test "last_name/0" do
    assert is_binary(Faker.Name.last_name)
  end

  test "name/0" do
    assert is_binary(Faker.Name.name)
  end

  test "prefix/0" do
    assert is_binary(Faker.Name.prefix)
  end

  test "suffix/0" do
    assert is_binary(Faker.Name.suffix)
  end
end
