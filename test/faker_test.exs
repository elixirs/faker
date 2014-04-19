defmodule FakerTest do
  use ExUnit.Case, async: true

  test :format do
    assert Regex.match?(~r/\w{3}\d{4}@\w{4}\.\w{3}/, Faker.format("???####@????.???"))
  end
end
