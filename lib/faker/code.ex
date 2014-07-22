defmodule Faker.Code do
  defdelegate isbn, to: Faker.Code, as: :isbn10

  def isbn10 do
    :random.seed(:erlang.now)
    sequence = Faker.format("#########")
    sequence <> last_digit(sequence <> "0", calc_function10, 11)
  end

  def isbn13 do
    :random.seed(:erlang.now)
    sequence = hd(Enum.shuffle(["978", "979"])) <> Faker.format("#########")
    sequence <> last_digit(sequence <> "0", calc_function13, 10)
  end

  def issn do
    :random.seed(:erlang.now)
    Faker.format("####-###") <> hd(Enum.shuffle(["#", "X"]))
  end

  defp last_digit(sequence, calc_function, size) do
    graphemes = String.reverse(sequence) |> String.graphemes |> Stream.with_index
    checksum = graphemes |> Stream.map(calc_function) |> Enum.sum
    grapheme_for_last(checksum, size)
  end

  defp grapheme_for_last(checksum, size) do
    digit_to_grapheme(size - rem(checksum, size), size)
  end

  defp calc_function10 do
    fn({e, i}) -> grapheme_to_digit(e) * (i + 1) end
  end

  defp calc_function13 do
    require Integer
    fn({e, i}) ->
      if Integer.odd?(i) do
        grapheme_to_digit(e) * 3
      else
        grapheme_to_digit(e)
      end
    end
  end

  defp digit_to_grapheme(10, 11), do: "X"
  defp digit_to_grapheme(digit, size) when digit == size, do: "0"
  defp digit_to_grapheme(digit, _), do: Integer.to_string(digit)

  defp grapheme_to_digit("X"), do: 10
  defp grapheme_to_digit(str) when str !== "X" do
    {1, digit} = {String.length(str), String.to_integer(str)}
    digit
  end
end
