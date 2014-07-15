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

  def last_digit(sequence) do
    mult = fn({e, i}) -> digit(e) * (i + 1) end

    graphemes = String.graphemes(sequence)
    reversed_graphemes_with_index = Enum.reverse(graphemes) |> Stream.with_index
    checksum = reversed_graphemes_with_index |> Stream.map(mult) |> Enum.sum
    rem = rem(checksum, 11)
    if rem == 0 do
      "0"
    else
      d = 11 - rem
      digit_to_code_binary d
    end
  end

  defp digit_to_code_binary(10) do
    "X"
  end

  defp digit_to_code_binary(digit) do
    Integer.to_string(digit)
  end

  def digit("X") do
    10
  end

  def digit(str) when str !== "X" do
    {1, digit} = {String.length(str), String.to_integer(str)}
    digit
  end
end
