defmodule Faker.SSN.EnUsTest do
  use ExUnit.Case, async: true
  import Faker.SSN.EnUs

  defp repeat_test(fun) do
    for _ <- 1..100, do: fun.()
  end

  test "ssn/0", do: assert is_binary(ssn())

  test "ssn is a valid length" do
    repeat_test fn ->
      assert String.length(ssn()) == 11
    end
  end

  test "snn does not contain 666 in area" do
    repeat_test fn ->
      refute String.contains?(ssn(), "666-")
    end
  end

  test "snn does not contain 00 in group" do
    repeat_test fn ->
      refute String.contains?(ssn(), "-00-")
    end
  end

  test "snn does not contain 0000 in serial" do
    repeat_test fn ->
      refute String.contains?(ssn(), "-0000")
    end
  end
end
