defmodule Faker.ColorTest do
  use ExUnit.Case, async: true

  import Faker.Color

  doctest Faker.Color

  @iterations 10_000

  test "rgb_decimal/0" do
    Stream.repeatedly(&rgb_decimal/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert tuple_size(generated_value) == 3
      assert generated_value |> Tuple.to_list() |> Enum.all?(&(&1 >= 0))
      assert generated_value |> Tuple.to_list() |> Enum.all?(&(&1 <= 255))
    end)
  end

  test "rgb_hex/0" do
    Stream.repeatedly(&rgb_hex/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 6
      assert Regex.match?(~r/^[0-9A-F]{6}$/, generated_value)
    end)
  end
end
