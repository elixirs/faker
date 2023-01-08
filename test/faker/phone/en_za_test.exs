defmodule Faker.Phone.EnZaTest do
  use ExUnit.Case, async: true

  import Faker.Phone.EnZa

  @iterations 10_000
  @max_phone_number_length 10

  test "landline_number/0 has a valid length" do
    Stream.repeatedly(&landline_number/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == @max_phone_number_length
    end)
  end

  test "cell_number/0 return starts with 0, 27" do
    Stream.repeatedly(&cell_number/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.match?(generated_value, ~r/^(27|0)[0-9]{9}$/)
    end)
  end
end
