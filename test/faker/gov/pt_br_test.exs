defmodule Faker.Gov.PtBrTest do
  use ExUnit.Case, async: false

  import Faker.Gov.PtBr

  doctest Faker.Gov.PtBr

  @iterations 10_000

  defmodule SequenceRandom do
    def random_between(left, right) do
      [number | rest] = Process.get(__MODULE__)
      true = number in left..right
      Process.put(__MODULE__, rest)
      number
    end
  end

  test "cpf has valid formatting and check digits" do
    Enum.each(1..@iterations, fn _ ->
      generated = cpf()
      assert Regex.match?(~r/^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$/, generated)

      digits =
        generated
        |> String.replace(~r/[^0-9]/, "")
        |> String.graphemes()
        |> Enum.map(&String.to_integer/1)

      # Ascending weights provide an independent form of CPF's modulo-11 rule.
      first_sum = digits |> Enum.take(9) |> weighted_sum(1)
      second_sum = digits |> Enum.take(10) |> weighted_sum(0)

      assert Enum.at(digits, 9) == rem(rem(first_sum, 11), 10)
      assert Enum.at(digits, 10) == rem(rem(second_sum, 11), 10)
    end)
  end

  test "cpf skips repeated digits and generates known valid CPFs, including leading zeros" do
    previous_random_module = Application.fetch_env!(:faker, :random_module)

    on_exit(fn ->
      Application.put_env(:faker, :random_module, previous_random_module)
    end)

    Application.put_env(:faker, :random_module, SequenceRandom)
    repeated_digits = Enum.map(0..9, &(&1 * 111_111_111))
    Process.put(SequenceRandom, repeated_digits ++ [529_982_247, 123_456_789, 1])

    assert cpf() == "529.982.247-25"
    assert cpf() == "123.456.789-09"
    assert cpf() == "000.000.001-91"
  end

  defp weighted_sum(digits, offset) do
    digits
    |> Enum.with_index(offset)
    |> Enum.reduce(0, fn {digit, weight}, sum -> sum + digit * weight end)
  end
end
