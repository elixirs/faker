defmodule Faker.ShakespeareTest do
  use ExUnit.Case, async: true

  doctest Faker.Lorem.Shakespeare
  doctest Faker.Lorem.Shakespeare.En
  doctest Faker.Lorem.Shakespeare.Ru
end
