defmodule Faker.Gov.UsTest do
  use ExUnit.Case, async: true

  import Faker.Gov.Us

  doctest Faker.Gov.Us

  @iterations 10_000

  test "ssn is a valid length" do
    Stream.repeatedly(&ssn/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert 11 = String.length(generated_value)
    end)
  end

  test "snn does not contain 900-999 in area" do
    Stream.repeatedly(&ssn/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn <<area::binary-size(3), _::binary>> ->
      refute String.to_integer(area) in 900..999
    end)
  end

  test "snn does not contain 666 in area" do
    Stream.repeatedly(&ssn/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, "666-")
    end)
  end

  test "snn does not contain 00 in group" do
    Stream.repeatedly(&ssn/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, "-00-")
    end)
  end

  test "snn does not contain 0000 in serial" do
    Stream.repeatedly(&ssn/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, "-0000")
    end)
  end

  test "ein is a valid length" do
    Stream.repeatedly(&ein/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert 10 = String.length(generated_value)
    end)
  end

  test "ein does not contain 00 in campus" do
    Stream.repeatedly(&ein/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, "00-")
    end)
  end

  test "ein does not contain 0000000 in serial" do
    Stream.repeatedly(&ein/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute String.contains?(generated_value, "-0000000")
    end)
  end
end
