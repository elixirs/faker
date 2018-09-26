defmodule Faker.Phone.EnUsTest do
  use ExUnit.Case, async: true

  import Faker.Phone.EnUs

  @iterations 10_000

  test "area_code/0 is a valid length" do
    Stream.repeatedly(&area_code/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 3
    end)
  end

  test "exchange_code/0 is a valid length" do
    Stream.repeatedly(&exchange_code/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 3
    end)
  end

  test "subscriber_number/0 is a valid length" do
    Stream.repeatedly(&subscriber_number/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 4
    end)
  end

  test "subscriber_number/1 is a valid length" do
    Stream.repeatedly(fn -> subscriber_number(3) end)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 3
    end)
  end

  test "extension/0 is a valid length" do
    Stream.repeatedly(&extension/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 4
    end)
  end

  test "extension/1 is a valid length" do
    Stream.repeatedly(fn -> extension(2) end)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 2
    end)
  end

  test "phone_digits/0 second digit of area code is not 9" do
    Stream.repeatedly(&phone_digits/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.at(generated_value, 1) != "9"
    end)
  end

  test "phone_digits/0 is a valid length" do
    Stream.repeatedly(&phone_digits/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 10
    end)
  end

  test "phone_digits/0 central office segment does not start with 1" do
    Stream.repeatedly(&phone_digits/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.at(generated_value, 3) != "1"
    end)
  end

  test "phone_digits/0 central office segment doesn't end with 11" do
    Stream.repeatedly(&phone_digits/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.slice(generated_value, 4, 2) != "11"
    end)
  end

  defp phone_digits() do
    ~r/[0-9]/
    |> Regex.scan(phone())
    |> List.flatten()
    |> Enum.join()
  end
end
