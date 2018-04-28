defmodule Faker.Color.EsTest do
  use ExUnit.Case, async: true
  import Faker.Color

  test "name/0" do
    assert is_binary(name())
  end
end
