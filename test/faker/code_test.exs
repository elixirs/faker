defmodule CodeTest do
  use ExUnit.Case, async: true

  defp grapheme_to_digit("X"), do: 10
  defp grapheme_to_digit(str), do: String.to_integer(str)

  defp checksum(isbn, calc_function) do
    String.reverse(isbn)
    |> String.graphemes
    |> Stream.with_index
    |> Stream.map(calc_function)
    |> Enum.sum
  end

  defp calc_function10 do
    fn({e, i}) -> grapheme_to_digit(e) * (i + 1) end
  end

  defp calc_function13 do
    fn({e, i}) ->
      if rem(i,2) == 1 do
        grapheme_to_digit(e) * 3
      else
        grapheme_to_digit(e)
      end
    end
  end

  test "isbn/0" do
    assert is_binary(Faker.Code.isbn)
    assert String.length(Faker.Code.isbn) == 10
    checksum10 = checksum(Faker.Code.isbn10, calc_function10())
    assert rem(checksum10, 11) == 0
  end

  test "isbn10/0" do
    assert is_binary(Faker.Code.isbn10)
    assert String.length(Faker.Code.isbn10) == 10
    checksum10 = checksum(Faker.Code.isbn10, calc_function10())
    assert rem(checksum10, 11) == 0
  end

  test "isbn13/0" do
    assert is_binary(Faker.Code.isbn13)
    assert String.length(Faker.Code.isbn13) == 13
    checksum13 = checksum Faker.Code.isbn13, calc_function13()
    assert rem(checksum13, 10) == 0
  end

  test "issn/0" do
    assert is_binary(Faker.Code.issn)
    assert String.length(Faker.Code.issn) == 8
    assert Regex.match?(~r/^\d{7}[\dX]$/, Faker.Code.issn)
  end

  test "iban/1 returns iban with valid length" do
    assert String.length(Faker.Code.iban("NL")) == 18
  end

  test "iban/1 with country code returns iban for that country" do
    assert "BE" <> _tail = Faker.Code.iban("BE")
  end

  test "iban/0 returns random iban" do
    assert Regex.match? ~r/^[A-Z]{2}\d{2}[A-Z0-9]+$/, Faker.Code.iban
  end

  test "iban/1 with set of country codes returns an iban for one of these countries" do
    country_codes = ~w(NL BE DE FR)
    iban_country_code =
      country_codes
      |> Faker.Code.iban
      |> String.slice(0, 2)
    assert iban_country_code in country_codes
  end

  test "iban/2 generates iban starting with given components" do
    assert Regex.match?(~r/NL\d{2}INGB\d{10}/, Faker.Code.iban("NL", ["INGB"]))
  end
end
