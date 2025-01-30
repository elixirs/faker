defmodule Faker.Gov.It do
  @moduledoc """
  Functions for data created/released by the Italian government,
  like fiscal codes
  """

  require Integer

  alias Faker.Util

  @consonants ~w(B C D F G H L M N P Q R S T V Z)

  @doc """
  Returns a random Italian fiscal code

  ## Examples

      iex> Faker.Gov.It.fiscal_id
      "LPRNNL58T70A252Z"
      iex> Faker.Gov.It.fiscal_id
      "RGTZDP01A68H333X"
      iex> Faker.Gov.It.fiscal_id
      "DDMSRS32S63F160O"
      iex> Faker.Gov.It.fiscal_id
      "TBSPFC28T71C158N"
  """
  @spec fiscal_id() :: binary()
  def fiscal_id do
    surname()
    |> Kernel.<>(name())
    |> Kernel.<>(birth_date())
    |> Kernel.<>(town_code())
    |> (&Kernel.<>(&1, cin(&1))).()
  end

  defp surname do
    Util.join(3, fn -> Util.pick(@consonants) end)
  end

  defp name do
    Util.join(3, fn -> Util.pick(@consonants) end)
  end

  defp birth_date do
    date_of_birth = Faker.Date.date_of_birth(0..99)
    male? = Util.pick([true, false])

    year = date_of_birth.year |> Integer.to_string() |> String.slice(2, 2)
    month = month_code(date_of_birth.month)

    day =
      if male?,
        do: date_of_birth.day |> Integer.to_string() |> String.pad_leading(2, "0"),
        else: (date_of_birth.day + 40) |> Integer.to_string() |> String.pad_leading(2, "0")

    "#{year}#{month}#{day}"
  end

  defp month_code(month) do
    case month do
      1 -> "A"
      2 -> "B"
      3 -> "C"
      4 -> "D"
      5 -> "E"
      6 -> "H"
      7 -> "L"
      8 -> "M"
      9 -> "P"
      10 -> "R"
      11 -> "S"
      12 -> "T"
    end
  end

  defp town_code do
    case Util.pick(~w(A B C D E F G H I L M Z)) do
      "Z" ->
        "Z#{Faker.random_between(100, 999)}"

      town_letter ->
        town_number =
          Faker.random_between(1, 999)
          |> Integer.to_string()
          |> String.pad_leading(3, "0")

        "#{town_letter}#{town_number}"
    end
  end

  # See https://it.wikipedia.org/wiki/Codice_fiscale#Generazione_del_codice_fiscale
  defp cin(input) do
    sum =
      input
      |> String.codepoints()
      |> Enum.with_index()
      |> Enum.reduce(0, fn {char, index}, acc ->
        # iterazion is 1-based
        case Integer.is_even(index + 1) do
          true -> acc + cin_even(char)
          false -> acc + cin_odd(char)
        end
      end)

    Enum.at(
      ~w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z),
      Integer.mod(sum, 26)
    )
  end

  defp cin_even("0"), do: 0
  defp cin_even("1"), do: 1
  defp cin_even("2"), do: 2
  defp cin_even("3"), do: 3
  defp cin_even("4"), do: 4
  defp cin_even("5"), do: 5
  defp cin_even("6"), do: 6
  defp cin_even("7"), do: 7
  defp cin_even("8"), do: 8
  defp cin_even("9"), do: 9
  defp cin_even("A"), do: 0
  defp cin_even("B"), do: 1
  defp cin_even("C"), do: 2
  defp cin_even("D"), do: 3
  defp cin_even("E"), do: 4
  defp cin_even("F"), do: 5
  defp cin_even("G"), do: 6
  defp cin_even("H"), do: 7
  defp cin_even("I"), do: 8
  defp cin_even("J"), do: 9
  defp cin_even("K"), do: 10
  defp cin_even("L"), do: 11
  defp cin_even("M"), do: 12
  defp cin_even("N"), do: 13
  defp cin_even("O"), do: 14
  defp cin_even("P"), do: 15
  defp cin_even("Q"), do: 16
  defp cin_even("R"), do: 17
  defp cin_even("S"), do: 18
  defp cin_even("T"), do: 19
  defp cin_even("U"), do: 20
  defp cin_even("V"), do: 21
  defp cin_even("W"), do: 22
  defp cin_even("X"), do: 23
  defp cin_even("Y"), do: 24
  defp cin_even("Z"), do: 25

  defp cin_odd("0"), do: 1
  defp cin_odd("1"), do: 0
  defp cin_odd("2"), do: 5
  defp cin_odd("3"), do: 7
  defp cin_odd("4"), do: 9
  defp cin_odd("5"), do: 13
  defp cin_odd("6"), do: 15
  defp cin_odd("7"), do: 17
  defp cin_odd("8"), do: 19
  defp cin_odd("9"), do: 21
  defp cin_odd("A"), do: 1
  defp cin_odd("B"), do: 0
  defp cin_odd("C"), do: 5
  defp cin_odd("D"), do: 7
  defp cin_odd("E"), do: 9
  defp cin_odd("F"), do: 13
  defp cin_odd("G"), do: 15
  defp cin_odd("H"), do: 17
  defp cin_odd("I"), do: 19
  defp cin_odd("J"), do: 21
  defp cin_odd("K"), do: 2
  defp cin_odd("L"), do: 4
  defp cin_odd("M"), do: 18
  defp cin_odd("N"), do: 20
  defp cin_odd("O"), do: 11
  defp cin_odd("P"), do: 3
  defp cin_odd("Q"), do: 6
  defp cin_odd("R"), do: 8
  defp cin_odd("S"), do: 12
  defp cin_odd("T"), do: 14
  defp cin_odd("U"), do: 16
  defp cin_odd("V"), do: 10
  defp cin_odd("W"), do: 22
  defp cin_odd("X"), do: 25
  defp cin_odd("Y"), do: 24
  defp cin_odd("Z"), do: 23
end
