defmodule Faker.Phone.KeTest do
  use ExUnit.Case, async: true

  import Faker.Phone.Ke

  @iterations 10_000

    test "test area_code/0. Test if area code is a valid length" do
      Stream.repeatedly(&area_code/0)
      |> Enum.take(@iterations)
      |> Enum.each(fn generated_value ->
        assert String.length(generated_value) == 2
      end)
    end


    test "cell_number/0. Test if cell number is a valid length" do
      Stream.repeatedly(&cell_number/0)
      |> Enum.take(@iterations)
      |> Enum.each(fn generated_value ->
        assert String.length(generated_value) == 13
      end)
    end

    test "cell_number/0 return starts with +2541 or +2547 followed by 8 digits" do
      Stream.repeatedly(&cell_number/0)
      |> Enum.take(@iterations)
      |> Enum.each(fn generated_value ->
        assert String.match?(generated_value, ~r/^\+254(1|7)[0-9]{8}$/)
      end)
    end


    test "landline_number/0 return starts with +254 or +254 followed by 9 digits" do
      Stream.repeatedly(&landline_number/0)
      |> Enum.take(@iterations)
      |> Enum.each(fn generated_value ->
        assert String.match?(generated_value, ~r/^\+254[0-9]{9}$/)
      end)
    end
end
