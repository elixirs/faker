defmodule Faker.StringTest do
  use ExUnit.Case, async: true

  doctest Faker.String

  test "base64/1" do
    length = Faker.String.base64(12) |> String.length()
    assert length == 12
  end
end
