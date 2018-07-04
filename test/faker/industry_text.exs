defmodule Faker.IndustryTest do
  use ExUnit.Case, async: true

  test "industry/0" do
    assert is_binary(Faker.Industry.industry)
  end

  test "super_sector/0" do
    assert is_binary(Faker.Industry.super_sector)
  end

  test "sector/0" do
    assert is_binary(Faker.Industry.sector)
  end

  test "sub_sector/0" do
    assert is_binary(Faker.Industry.sub_sector)
  end
end
