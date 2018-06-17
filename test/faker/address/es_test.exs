defmodule Faker.Address.EsTest do
  use ExUnit.Case, async: true

  test "building_number/0" do
    assert is_binary(Faker.Address.Es.building_number)
    assert String.length(Faker.Address.Es.building_number) in 1..5
  end

  test "city/0" do
    assert is_binary(Faker.Address.Es.city)
  end

  test "city_prefix/0" do
    assert is_binary(Faker.Address.Es.city_prefix)
  end

  test "country/0" do
    assert is_binary(Faker.Address.Es.country)
  end

  test "geohash/0" do
    assert is_binary(Faker.Address.Es.geohash)
  end

  test "latitude/0" do
    assert is_float(Faker.Address.Es.latitude)
    assert cover?(-90, Faker.Address.Es.latitude, 90)
  end

  test "longitude/0" do
    assert is_float(Faker.Address.Es.longitude)
    assert cover?(-180, Faker.Address.Es.longitude, 180)
  end

  test "postcode/0" do
    assert is_binary(Faker.Address.Es.postcode)
  end

  test "secondary_address/0" do
    assert is_binary(Faker.Address.Es.secondary_address)
  end

  test "state/0" do
    assert is_binary(Faker.Address.Es.state)
  end

  test "state_abbr/0" do
    assert is_binary(Faker.Address.Es.state_abbr)
  end

  test "street_address/0" do
    assert is_binary(Faker.Address.Es.street_address)
  end

  test "street_address/1" do
    assert is_binary(Faker.Address.Es.street_address(true))
    assert is_binary(Faker.Address.Es.street_address(false))
  end

  test "street_name/0" do
    assert is_binary(Faker.Address.Es.street_name)
  end

  test "street_suffix/0" do
    assert is_binary(Faker.Address.Es.street_suffix)
  end

  test "time_zone/0" do
    assert is_binary(Faker.Address.Es.time_zone)
  end

  test "zip/0" do
    assert is_binary(Faker.Address.Es.zip)
  end

  test "zip_code/0" do
    assert is_binary(Faker.Address.Es.zip_code)
  end

  test "country_code/0" do
    assert is_binary(Faker.Address.Es.country_code)
    assert String.length(Faker.Address.Es.country_code) == 2
  end

  def cover?(left, value, right) do
    left <= value and value <= right
  end
end
