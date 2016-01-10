defmodule Faker.Phone.EnUsTest do
  use ExUnit.Case, async: true
  import Faker.Phone.EnUs

  defp repeat_test(fun) do
    for _ <- 1..100, do: fun.()
  end

  defp phone_digits do
    Regex.scan(~r/[0-9]/, phone)
    |> List.flatten
    |> Enum.join
  end

  test "phone/0", do: assert is_binary(phone)

  test "area_code/0" do
    assert is_binary(area_code)
    assert String.length(area_code) == 3
  end

  test "exchange_code/0" do
    assert is_binary(exchange_code)
    assert String.length(exchange_code) == 3
  end

  test "subscriber_number/0" do
    assert is_binary(subscriber_number)
    assert String.length(subscriber_number) == 4
  end

  test "subscriber_number/1" do
    assert String.length(subscriber_number(3)) == 3
  end

  test "extension/0" do
    assert is_binary(extension)
    assert String.length(extension) == 4
  end

  test "extension/1" do
    assert String.length(extension(2)) == 2
  end

  test "phone second digit of area code is not 9" do
    repeat_test fn ->
      assert String.at(phone_digits, 1) != "9"
    end
  end

  test "phone is a valid length" do
    repeat_test fn ->
      assert String.length(phone_digits) == 10
    end
  end

  test "phone central office segment does not start with 1" do
    repeat_test fn ->
      assert String.at(phone_digits, 3) != "1"
    end
  end

  test "phone central office segment doesn't end with 11" do
    repeat_test fn ->
      assert String.slice(phone_digits, 4, 2) != "11"
    end
  end
end
