defmodule Faker.Phone.EnGbTest do
  use ExUnit.Case, async: true

  import Faker.Phone.EnGb

  @iterations 10_000

  test "landline_number/0 is a valid length" do
    Stream.repeatedly(&landline_number/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert String.length(generated_value) == 12
    end)
  end
end
