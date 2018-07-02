defmodule Faker.AppTest do
  use ExUnit.Case, async: true

  import Faker.App

  doctest Faker.App

  @iterations 10_000

  test "semver/0" do
    Stream.repeatedly(&semver/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert {:ok, %Version{}} = Version.parse(generated_value)
    end)
  end
end
