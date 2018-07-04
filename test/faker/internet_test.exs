defmodule Faker.InternetTest do
  use ExUnit.Case, async: true

  test "domain_name/0" do
    assert is_binary(Faker.Internet.domain_name)
  end

  test "domain_suffix/0" do
    assert is_binary(Faker.Internet.domain_suffix)
  end

  test "domain_word/0" do
    assert is_binary(Faker.Internet.domain_word)
  end

  test "email/0" do
    assert is_binary(Faker.Internet.email)
  end

  test "free_email/0" do
    assert is_binary(Faker.Internet.free_email)
  end

  test "free_email_service/0" do
    assert is_binary(Faker.Internet.free_email_service)
  end

  test "ip_v4_address/0" do
    assert is_binary(Faker.Internet.ip_v4_address)
    assert Regex.match?(~r/^(\d+\.){3}\d+$/, Faker.Internet.ip_v4_address)
  end

  test "ip_v6_address/0" do
    assert is_binary(Faker.Internet.ip_v6_address)
    assert Regex.match?(~r/^([0-9A-F]{4}:){7}[0-9A-F]{4}$/, Faker.Internet.ip_v6_address)
  end

  test "mac_address/0" do
    assert is_binary(Faker.Internet.mac_address)
    assert Regex.match?(~r/^([0-9a-f]{2}:){5}[0-9a-f]{2}$/, Faker.Internet.mac_address)
  end

  test "safe_email/0" do
    assert is_binary(Faker.Internet.safe_email)
  end

  test "user_name/0" do
    assert is_binary(Faker.Internet.user_name)
  end

  test "url/0" do
    assert is_binary(Faker.Internet.url)
    assert Regex.match?(~r/^http[s]?:\/\/\w+\.\w+$/, Faker.Internet.url)
  end

  test "image_url/0" do
    assert is_binary(Faker.Internet.image_url)
  end

  test "slug/0" do
    assert is_binary(Faker.Internet.slug)
    assert Regex.match?(~r/\A([a-z0-9]+[-\._])*[a-z0-9]+\z/, Faker.Internet.slug)
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
