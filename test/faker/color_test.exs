defmodule Faker.ColorTest do
  use ExUnit.Case, async: true
  import Faker.Color

  test "rgb_decimal/0" do
    assert tuple_size(rgb_decimal()) == 3
    0..100 |> Enum.each(fn(_) ->
      assert rgb_decimal() |> Tuple.to_list |> Enum.all?(&(&1 >= 0))
      assert rgb_decimal() |> Tuple.to_list |> Enum.all?(&(&1 <= 255))
    end)
  end

  test "rgb_hex/0" do
    assert String.length(rgb_hex()) == 6
    assert Regex.match?(~r/^[0-9A-F]{6}$/, rgb_hex())
  end

  test "name/0" do
    assert is_binary(name())
  end

  test "fancy_name/0" do
    assert is_binary(fancy_name())
  end
end