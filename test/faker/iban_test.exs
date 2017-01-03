defmodule Faker.IbanTest do
  use ExUnit.Case, async: true

  test "iban/1 returns iban with valid length" do
    assert String.length(Faker.Iban.iban("NL")) == 18
  end

  test "iban/1 with country code returns iban for that country" do
    assert "BE" <> _tail = Faker.Iban.iban("BE")
  end

  test "iban/0 returns random iban" do
    assert Regex.match? ~r/^[A-Z]{2}\d{2}[A-Z0-9]+$/, Faker.Iban.iban
  end

  test "iban/1 with set of country codes returns an iban for one of these countries" do
    country_codes = ~w(NL BE DE FR)
    iban_country_code =
      country_codes
      |> Faker.Iban.iban
      |> String.slice(0, 2)
    assert iban_country_code in country_codes
  end

  test "iban/2 generates iban starting with given components" do
    assert Regex.match?(~r/NL\d{2}INGB\d{10}/, Faker.Iban.iban("NL", ["INGB"]))
  end
end
