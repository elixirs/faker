defmodule Faker.Color.EnTest do
  use ExUnit.Case, async: true
  import Faker.Color

  test "name/0" do
    assert is_binary(name())
  end

  test "fancy_name/0" do
    assert is_binary(fancy_name())
  end
end
