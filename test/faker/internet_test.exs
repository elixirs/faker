defmodule Faker.InternetTest do
  use ExUnit.Case, async: true

  import Faker.Internet

  doctest Faker.Internet
  doctest Faker.Internet.En
  doctest Faker.Internet.Es
  doctest Faker.Internet.PtBr

  @iterations 10_000

  test "ip_v4_address/0" do
    assert Regex.match?(~r/^(\d+\.){3}\d+$/, Faker.Internet.ip_v4_address())
  end

  test "ip_v6_address/0" do
    assert Regex.match?(~r/^([0-9A-F]{4}:){7}[0-9A-F]{4}$/, Faker.Internet.ip_v6_address())
  end

  test "mac_address/0" do
    assert Regex.match?(~r/^([0-9a-f]{2}:){5}[0-9a-f]{2}$/, Faker.Internet.mac_address())
  end

  test "url/0" do
    assert Regex.match?(~r/^http[s]?:\/\/\w+\.\w+$/, Faker.Internet.url())
  end

  test "slug/0" do
    assert Regex.match?(~r/\A([a-z0-9]+[-\._])*[a-z0-9]+\z/, Faker.Internet.slug())
  end

  test "slug/1" do
    slug = Faker.Internet.slug(["hello", "world"])

    assert Regex.match?(~r/\A((hello|world)[-\._])(hello|world)\z/, slug)
  end

  test "slug/2" do
    slug = Faker.Internet.slug(["hello", "world"], ["-"])

    assert Regex.match?(~r/\A((hello|world)-)(hello|world)\z/, slug)
  end

  test "user_name/0" do
    Stream.repeatedly(&user_name/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute Regex.match?(~r/('|")/, generated_value)
    end)
  end

  test "email/0" do
    Stream.repeatedly(&email/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute Regex.match?(~r/('|")/, generated_value)
    end)
  end

  test "safe_email/0" do
    Stream.repeatedly(&safe_email/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute Regex.match?(~r/('|")/, generated_value)
    end)
  end

  test "free_email/0" do
    Stream.repeatedly(&free_email/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute Regex.match?(~r/('|")/, generated_value)
    end)
  end

  test "domain_word/0" do
    Stream.repeatedly(&domain_word/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      refute Regex.match?(~r/('|")/, generated_value)
    end)
  end
end
