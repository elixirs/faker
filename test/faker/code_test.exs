defmodule CodeTest do
  use ExUnit.Case, async: true

  test "isbn/0" do
    assert is_binary(Faker.Code.isbn)
    assert String.length(Faker.Code.isbn) == 10
  end

  test "isbn10/0" do
    assert is_binary(Faker.Code.isbn10)
    assert String.length(Faker.Code.isbn10) == 10
  end

  test "isbn13/0" do
    assert is_binary(Faker.Code.isbn13)
    assert String.length(Faker.Code.isbn13) == 13
  end

  test "issn/0" do
    assert is_binary(Faker.Code.issn)
    assert String.length(Faker.Code.issn) == 9
  end
end
