defmodule CodeTest do
  use ExUnit.Case, async: true

  defp reverse_codepoints_with_index(str) do
    String.codepoints(str) |> Enum.reverse |> Stream.with_index
  end

  defp digit("X") do
    10
  end

  defp digit(str) when str !== "X" do
    {1, digit} = {String.length(str), String.to_integer(str)}
    digit
  end

  defp checksum10(isbn) do
    mult = fn({e, i}) -> digit(e) * (i + 1) end
    reverse_codepoints_with_index(isbn) |> Stream.map(mult) |> Enum.sum
  end

  test "isbn/0" do
    assert is_binary(Faker.Code.isbn)
    assert String.length(Faker.Code.isbn) == 10
    assert rem(checksum10(Faker.Code.isbn), 11) == 0
  end

  test "isbn10/0" do
    assert is_binary(Faker.Code.isbn10)
    assert String.length(Faker.Code.isbn10) == 10
    assert rem(checksum10(Faker.Code.isbn10), 11) == 0
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
