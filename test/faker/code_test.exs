defmodule CodeTest do
  use ExUnit.Case, async: true

  test :isbn do
    assert is_binary(Faker.Code.isbn)
    assert size(Faker.Code.isbn) == 10
  end

  test :isbn10 do
    assert is_binary(Faker.Code.isbn10)
    assert size(Faker.Code.isbn10) == 10
  end

  test :isbn13 do
    assert is_binary(Faker.Code.isbn13)
    assert size(Faker.Code.isbn13) == 13
  end

  test :issn do
    assert is_binary(Faker.Code.issn)
    assert size(Faker.Code.issn) == 9
  end
end
