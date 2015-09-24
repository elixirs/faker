defmodule Faker.ShakespeareTest do
  use ExUnit.Case, async: true
  import Faker.Shakespeare

  test :hamlet_quote do
    assert String.length(hamlet_quote) != 0
    assert Regex.match?(~r/.+/, hamlet_quote)
  end
  
  test :as_you_like_it_quote do
    assert String.length(as_you_like_it_quote) != 0
    assert Regex.match?(~r/.+/, as_you_like_it_quote)
  end
  
  test :king_richard_iii_quote do
    assert String.length(king_richard_iii_quote) != 0
    assert Regex.match?(~r/.+/, king_richard_iii_quote)
  end
  
  test :romeo_and_juliet_quote do
    assert String.length(romeo_and_juliet_quote) != 0
    assert Regex.match?(~r/.+/, romeo_and_juliet_quote)
  end
end