defmodule CompanyTest do
  use ExUnit.Case, async: true

  test "bs/0" do
    assert is_binary(Faker.Company.bs)
  end

  test "bullshit/0" do
    assert is_binary(Faker.Company.bullshit)
  end

  test "bullshit_prefix/0" do
    assert is_binary(Faker.Company.bullshit_prefix)
  end

  test "bullshit_suffix/0" do
    assert is_binary(Faker.Company.bullshit_suffix)
  end

  test "buzzword/0" do
    assert is_binary(Faker.Company.buzzword)
  end

  test "buzzword_prefix/0" do
    assert is_binary(Faker.Company.buzzword_prefix)
  end

  test "buzzword_suffix/0" do
    assert is_binary(Faker.Company.buzzword_suffix)
  end

  test "catch_phrase/0" do
    assert is_binary(Faker.Company.catch_phrase)
  end

  test "name/0" do
    assert is_binary(Faker.Company.name)
  end

  test "suffix/0" do
    assert is_binary(Faker.Company.suffix)
  end
end
