defmodule Faker.StringTest do
  use ExUnit.Case, async: true

  doctest Faker.String

  describe "from_regex/1" do
    test "is random" do
      generated_values = for _ <- 0..25, do: Faker.String.from_regex(~r/a|b/)
      assert "a" in generated_values and "b" in generated_values
    end

    test "conforms to regex" do
      regex = ~r/[0-9]{3}-[0-9]{3}-[0-9]{4}/
      assert Regex.match?(regex, Faker.String.from_regex(regex))
    end
  end

  describe "alphanumeric/1" do
    test "is random" do
      generated_values = for _ <- 0..25, do: Faker.String.alphanumeric(100)
      assert generated_values |> MapSet.new() |> MapSet.size() == length(generated_values)
    end

    test "has only alphabetical and numeric characters" do
      generated_values = for _ <- 0..25, do: Faker.String.alphanumeric(100)

      assert [""] =
               generated_values
               |> Enum.map(&String.replace(&1, ~r/[a-zA-Z0-9]/, ""))
               |> Enum.dedup()
    end
  end

  describe "numeric/1" do
    test "is random" do
      generated_values = for _ <- 0..25, do: Faker.String.numeric(100)
      assert generated_values |> MapSet.new() |> MapSet.size() == length(generated_values)
    end

    test "has only alphabetical and numeric characters" do
      generated_values = for _ <- 0..25, do: Faker.String.numeric(100)

      assert [""] =
               generated_values
               |> Enum.map(&String.replace(&1, ~r/[0-9]/, ""))
               |> Enum.dedup()
    end
  end

  describe "alpha/1" do
    test "is random" do
      generated_values = for _ <- 0..25, do: Faker.String.alpha(100)

      assert generated_values |> MapSet.new() |> MapSet.size() ==
               length(generated_values)
    end

    test "has only alphabetical characters" do
      generated_values = for _ <- 0..25, do: Faker.String.alpha(100)

      assert [""] =
               generated_values
               |> Enum.map(&String.replace(&1, ~r/[a-zA-Z]/, ""))
               |> Enum.dedup()
    end
  end

  test "base64/1" do
    length = Faker.String.base64(12) |> String.length()
    assert length == 12
  end
end
