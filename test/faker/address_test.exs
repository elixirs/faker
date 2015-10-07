defmodule AddressTest do
  use ExUnit.Case, async: true

  test "building_number/0" do
    assert is_binary(Faker.Address.building_number)
    assert String.length(Faker.Address.building_number) in 1..5
  end

  test "city/0" do
    assert is_binary(Faker.Address.city)
  end

  test "city_prefix/0" do
    assert is_binary(Faker.Address.city_prefix)
  end

  test "city_suffix/0" do
    assert is_binary(Faker.Address.city_suffix)
  end

  test "country/0" do
    assert is_binary(Faker.Address.country)
  end

  test "latitude/0" do
    assert is_float(Faker.Address.latitude)
    assert cover?(-90, Faker.Address.latitude, 90)
  end

  test "longitude/0" do
    assert is_float(Faker.Address.longitude)
    assert cover?(-180, Faker.Address.longitude, 180)
  end

  test "postcode/0" do
    assert is_binary(Faker.Address.postcode)
  end

  test "secondary_address/0" do
    assert is_binary(Faker.Address.secondary_address)
  end

  test "state/0" do
    assert is_binary(Faker.Address.state)
  end

  test "state_abbr/0" do
    assert is_binary(Faker.Address.state_abbr)
  end

  test "street_address/0" do
    assert is_binary(Faker.Address.street_address)
  end

  test "street_address/1" do
    assert is_binary(Faker.Address.street_address(true))
    assert is_binary(Faker.Address.street_address(false))
  end

  test "street_name/0" do
    assert is_binary(Faker.Address.street_name)
  end

  test "street_suffix/0" do
    assert is_binary(Faker.Address.street_suffix)
  end

  test "time_zone/0" do
    assert is_binary(Faker.Address.time_zone)
  end

  test "zip/0" do
    assert is_binary(Faker.Address.zip)
  end

  test "zip_code/0" do
    assert is_binary(Faker.Address.zip_code)
  end

  test "country_code/0" do
    assert is_binary(Faker.Address.country_code)
    assert String.length(Faker.Address.country_code) == 2
  end

  def cover?(left, value, right) do
    left <= value and value <= right
  end
end
