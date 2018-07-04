defmodule InternetTest do
  use ExUnit.Case, async: true

  doctest Faker.Internet
  doctest Faker.Internet.En
  doctest Faker.Internet.Es
  doctest Faker.Internet.PtBr

  test "ip_v4_address/0" do
    assert is_binary(Faker.Internet.ip_v4_address())
    assert Regex.match?(~r/^(\d+\.){3}\d+$/, Faker.Internet.ip_v4_address())
  end

  test "ip_v6_address/0" do
    assert is_binary(Faker.Internet.ip_v6_address())
    assert Regex.match?(~r/^([0-9A-F]{4}:){7}[0-9A-F]{4}$/, Faker.Internet.ip_v6_address())
  end

  test "mac_address/0" do
    assert is_binary(Faker.Internet.mac_address())
    assert Regex.match?(~r/^([0-9a-f]{2}:){5}[0-9a-f]{2}$/, Faker.Internet.mac_address())
  end

  test "url/0" do
    assert is_binary(Faker.Internet.url())
    assert Regex.match?(~r/^http[s]?:\/\/\w+\.\w+$/, Faker.Internet.url())
  end

  test "slug/0" do
    assert is_binary(Faker.Internet.slug())
    assert Regex.match?(~r/\A([a-z0-9]+[-\._])*[a-z0-9]+\z/, Faker.Internet.slug())
  end

  test "slug/1" do
    slug = Faker.Internet.slug(["hello", "world"])

    assert is_binary(slug)
    assert Regex.match?(~r/\A((hello|world)[-\._])(hello|world)\z/, slug)
  end

  test "slug/2" do
    slug = Faker.Internet.slug(["hello", "world"], ["-"])

    assert is_binary(slug)
    assert Regex.match?(~r/\A((hello|world)-)(hello|world)\z/, slug)
  end
end
