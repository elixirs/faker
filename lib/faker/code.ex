defmodule Faker.Code do
  defdelegate isbn, to: Faker.Code, as: :isbn10

  def isbn10 do
    :random.seed(:erlang.now)
    sequence = Faker.format("#########")
    sequence <> last_digit(sequence <> "0")
  end

  def isbn13 do
    :random.seed(:erlang.now)
    hd(Enum.shuffle(["978", "979"])) <> Faker.format("#########") <> hd(Enum.shuffle(["#", "X"]))
  end

  def issn do
    :random.seed(:erlang.now)
    Faker.format("####-###") <> hd(Enum.shuffle(["#", "X"]))
  end

  defp last_digit(sequence) do
    calc_function = fn({e, i}) -> grapheme_to_digit(e) * (i + 1) end

    graphemes = String.graphemes(sequence) |> Enum.reverse |> Stream.with_index
    checksum = graphemes |> Stream.map(calc_function) |> Enum.sum
    digit_to_grapheme(11 - rem(checksum, 11))
  end

  defp digit_to_grapheme(10) do
    "X"
  end

  defp digit_to_grapheme(11) do
    "0"
  end

  defp digit_to_grapheme(digit) do
    Integer.to_string(digit)
  end

  defp grapheme_to_digit("X") do
    10
  end

  defp grapheme_to_digit(str) when str !== "X" do
    {1, digit} = {String.length(str), String.to_integer(str)}
    digit
  end
end
