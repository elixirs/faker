defmodule Faker.CodeTest do
  use ExUnit.Case, async: true

  import Faker.Code

  doctest Faker.Code

  @iterations 10_000

  defp grapheme_to_digit("X"), do: 10
  defp grapheme_to_digit(str), do: String.to_integer(str)

  defp checksum(isbn, calc_function) do
    String.reverse(isbn)
    |> String.graphemes()
    |> Stream.with_index()
    |> Stream.map(calc_function)
    |> Enum.sum()
  end

  defp calc_function10 do
    fn {e, i} -> grapheme_to_digit(e) * (i + 1) end
  end

  defp calc_function13 do
    fn {e, i} ->
      if rem(i, 2) == 1 do
        grapheme_to_digit(e) * 3
      else
        grapheme_to_digit(e)
      end
    end
  end

  test "isbn/0" do
    Stream.repeatedly(&isbn/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 10
      checksum10 = checksum(isbn(), calc_function10())
      assert rem(checksum10, 11) == 0
    end)
  end

  test "isbn10/0" do
    assert is_binary(isbn10())
    assert String.length(isbn10()) == 10
    checksum10 = checksum(isbn10(), calc_function10())
    assert rem(checksum10, 11) == 0
  end

  test "isbn13/0" do
    assert is_binary(isbn13())
    assert String.length(isbn13()) == 13
    checksum13 = checksum(isbn13(), calc_function13())
    assert rem(checksum13, 10) == 0
  end

  test "issn/0" do
    assert is_binary(issn())
    assert String.length(issn()) == 8
    assert Regex.match?(~r/^\d{7}[\dX]$/, issn())
  end
end
