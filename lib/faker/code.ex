defmodule Faker.Code do
  @moduledoc """
  Functions for generate common codes.
  """

  defdelegate isbn, to: Faker.Code, as: :isbn10

  def isbn10 do
    :rand.seed(:exs64, :os.timestamp)
    sequence = Faker.format("#########")
    sequence <> check_digit(sequence, &calc_digit_x_index/1, 11)
  end

  def isbn13 do
    :rand.seed(:exs64, :os.timestamp)
    sequence = hd(Enum.shuffle(["978", "979"])) <> Faker.format("#########")
    sequence <> check_digit(sequence, &calc_isbn13/1, 10)
  end

  def issn do
    :rand.seed(:exs64, :os.timestamp)
    sequence = Faker.format("#######")
    sequence <> check_digit(sequence, &calc_digit_x_index/1, 11)
  end

  defdelegate iban(), to: Faker.Code.Iban
  defdelegate iban(country_code_or_codes), to: Faker.Code.Iban
  defdelegate iban(country_code, prefix_components), to: Faker.Code.Iban

  defp check_digit(sequence, calc_function, size) do
    sequence <> "0"
    |> String.reverse()
    |> String.graphemes()
    |> Stream.with_index()
    |> Stream.map(calc_function)
    |> Enum.sum()
    |> grapheme_for_last(size)
  end

  defp grapheme_for_last(checksum, size) do
    digit_to_grapheme(size - rem(checksum, size), size)
  end

  defp calc_digit_x_index({e, i}), do: grapheme_to_digit(e) * (i + 1)
  defp calc_isbn13({e, i}) when rem(i, 2) == 1, do: grapheme_to_digit(e) * 3
  defp calc_isbn13({e, _}), do: grapheme_to_digit(e)

  defp digit_to_grapheme(10, 11), do: "X"
  defp digit_to_grapheme(digit, size) when digit == size, do: "0"
  defp digit_to_grapheme(digit, _), do: Integer.to_string(digit)

  defp grapheme_to_digit("X"), do: 10
  defp grapheme_to_digit(str), do: String.to_integer(str)
end
