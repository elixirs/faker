defmodule Faker.Code.IbanTest do
  use ExUnit.Case, async: true

  import Faker.Code.Iban

  doctest Faker.Code.Iban

  @iterations 10_000

  test "iban/1 returns iban with valid length" do
    Stream.repeatedly(fn -> iban("NL") end)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert 18 = String.length(generated_value)
    end)
  end

  test "iban/1 with country code returns iban for that country" do
    Stream.repeatedly(fn -> iban("BE") end)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert "BE" <> _tail = generated_value
    end)
  end

  test "iban/0 returns random iban" do
    Stream.repeatedly(&iban/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert Regex.match?(~r/^[A-Z]{2}\d{2}[A-Z0-9]+$/, generated_value)
    end)
  end

  test "iban/1 with set of country codes returns an iban for one of these countries" do
    country_codes = ~w(NL BE DE FR)

    Stream.repeatedly(fn -> iban(country_codes) end)
    |> Enum.take(@iterations)
    |> Enum.each(fn <<iban_country_code::binary-size(2), _::binary>> ->
      assert iban_country_code in country_codes
    end)
  end

  test "iban/2 generates iban starting with given components" do
    Stream.repeatedly(fn -> iban("NL", ["INGB"]) end)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert Regex.match?(~r/NL\d{2}INGB\d{10}/, generated_value)
    end)
  end
end
