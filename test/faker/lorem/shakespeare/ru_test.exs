defmodule Faker.Shakespeare.RuTest do
  use ExUnit.Case, async: true
  import Faker.Lorem.Shakespeare.Ru

  test "hamlet/0" do
    assert String.length(hamlet) != 0
    assert Regex.match?(~r/.+/, hamlet)
  end

  test "as_you_like_it/0" do
    assert String.length(as_you_like_it) != 0
    assert Regex.match?(~r/.+/, as_you_like_it)
  end

  test "king_richard_iii/0" do
    assert String.length(king_richard_iii) != 0
    assert Regex.match?(~r/.+/, king_richard_iii)
  end

  test "romeo_and_juliet/0" do
    assert String.length(romeo_and_juliet) != 0
    assert Regex.match?(~r/.+/, romeo_and_juliet)
  end
end
