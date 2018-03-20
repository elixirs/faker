defmodule StringTest do
  use ExUnit.Case, async: true

  test "base64/0" do
    assert is_binary(Faker.String.base64())
  end

  test "base64/1" do
    length = Faker.String.base64(12) |> String.length()
    assert length == 12
  end
end
