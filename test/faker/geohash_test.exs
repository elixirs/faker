defmodule GeohashTest do
    use ExUnit.Case, async: true
  
    test "geohash/0" do
      assert is_binary(Faker.Geohash.geohash)
    end
  end