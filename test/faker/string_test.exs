defmodule Faker.StringTest do
  use ExUnit.Case, async: false

  doctest Faker.String

  defmodule RandomIndex do
    def random_between(left, right) do
      index = Process.get(:faker_string_test_index)

      unless index in left..right do
        raise "test index #{inspect(index)} is outside #{inspect(left..right)}"
      end

      index
    end
  end

  test "base64/1" do
    length = Faker.String.base64(12) |> String.length()
    assert length == 12
  end

  test "naughty unicode whitespace sample keeps its original codepoints" do
    expected =
      [
        0x0009,
        0x000B,
        0x000C,
        0x0085,
        0x0020,
        0x1680,
        0x2000,
        0x2001,
        0x2002,
        0x2003,
        0x2004,
        0x2005,
        0x2006,
        0x2007,
        0x2008,
        0x2009,
        0x200A,
        0x200B,
        0x2028,
        0x2029,
        0x202F,
        0x205F,
        0x3000
      ]
      |> List.to_string()

    assert naughty_at(94) == expected
  end

  test "naughty paragraph separator sample keeps its original codepoints" do
    paragraph_separator = List.to_string([0x2029])

    assert naughty_at(168) == paragraph_separator <> "test" <> paragraph_separator
  end

  defp naughty_at(index) do
    random_module = Application.get_env(:faker, :random_module)

    try do
      Process.put(:faker_string_test_index, index)
      Application.put_env(:faker, :random_module, RandomIndex)
      Faker.String.naughty()
    after
      Process.delete(:faker_string_test_index)
      Application.put_env(:faker, :random_module, random_module)
    end
  end
end
