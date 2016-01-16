defmodule Faker.Phone.EnGbTest do
  use ExUnit.Case, async: true
  import Faker.Phone.EnGb

  test "number/0", do: assert is_binary(number)

  test "landline_number/0" do
    assert is_binary(landline_number)
    assert String.length(landline_number) == 12
  end

  test "cell_number/0", do: assert is_binary(cell_number)
  test "mobile_number/0", do: assert is_binary(mobile_number)
end
