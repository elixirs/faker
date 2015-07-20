defmodule Faker.ColorTest do
  use ExUnit.Case, async: true
  import Faker.Color

  test :rgb_hex do
    assert String.length(rgb_hex) == 6
    assert Regex.match?(~r/^[0-9A-F]{6}$/, rgb_hex)
  end
end
