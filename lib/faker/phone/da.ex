defmodule Faker.Phone.Da do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating Danish phone numbers.

  Danish phone numbers are 8 digits long and follow these patterns:
  - Mobile numbers start with: 2, 30-31, 40-42, 50-53, 60-61, 71, 81, 91-93
  - Landline numbers start with: 3-9 (but not mobile prefixes)
  - Country code is +45
  - Common formats: XX XX XX XX or XXXX XXXX
  """

  @doc """
  Returns a random Danish phone number

  ## Examples

      iex> Faker.Phone.Da.number()
      "31 54 26 46"
      iex> Faker.Phone.Da.number()
      "94 83 29 70"
      iex> Faker.Phone.Da.number()
      "89 35 70 20"
      iex> Faker.Phone.Da.number()
      "87 32 09 73"
  """
  @spec number() :: String.t()
  def number do
    if Faker.random_between(0, 1) == 0 do
      mobile_number()
    else
      landline_number()
    end
  end

  @doc """
  Returns a random Danish mobile phone number

  ## Examples

      iex> Faker.Phone.Da.mobile_number()
      "24 15 42 64"
      iex> Faker.Phone.Da.mobile_number()
      "26 10 83 29"
      iex> Faker.Phone.Da.mobile_number()
      "41 05 23 57"
      iex> Faker.Phone.Da.mobile_number()
      "92 20 30 32"
  """
  @spec mobile_number() :: String.t()
  def mobile_number do
    prefix = mobile_prefix()
    suffix = generate_suffix(6)
    format_number("#{prefix}#{suffix}")
  end

  @doc """
  Returns a random Danish mobile phone number

  ## Examples

      iex> Faker.Phone.Da.cell_number()
      "24 15 42 64"
      iex> Faker.Phone.Da.cell_number()
      "26 10 83 29"
      iex> Faker.Phone.Da.cell_number()
      "41 05 23 57"
      iex> Faker.Phone.Da.cell_number()
      "92 20 30 32"
  """
  @spec cell_number() :: String.t()
  defdelegate cell_number, to: __MODULE__, as: :mobile_number

  @doc """
  Returns a random Danish landline phone number

  ## Examples

      iex> Faker.Phone.Da.landline_number()
      "94 15 42 64"
      iex> Faker.Phone.Da.landline_number()
      "43 10 83 29"
      iex> Faker.Phone.Da.landline_number()
      "62 05 23 57"
      iex> Faker.Phone.Da.landline_number()
      "43 20 30 32"
  """
  @spec landline_number() :: String.t()
  def landline_number do
    prefix = landline_prefix()
    suffix = generate_suffix(6)
    format_number("#{prefix}#{suffix}")
  end

  @doc """
  Returns a random Danish phone number with international format

  ## Examples

      iex> Faker.Phone.Da.international_number()
      "+45 31 54 26 46"
      iex> Faker.Phone.Da.international_number()
      "+45 94 83 29 70"
      iex> Faker.Phone.Da.international_number()
      "+45 89 35 70 20"
      iex> Faker.Phone.Da.international_number()
      "+45 87 32 09 73"
  """
  @spec international_number() :: String.t()
  def international_number do
    "+45 #{number()}"
  end

  # Mobile number prefixes
  sampler(:mobile_prefix, [
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "40",
    "41",
    "42",
    "50",
    "51",
    "52",
    "53",
    "60",
    "61",
    "71",
    "81",
    "91",
    "92",
    "93"
  ])

  # Landline prefixes (excluding mobile prefixes)
  sampler(:landline_prefix, [
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "62",
    "63",
    "64",
    "65",
    "66",
    "67",
    "68",
    "69",
    "70",
    "72",
    "73",
    "74",
    "75",
    "76",
    "77",
    "78",
    "79",
    "80",
    "82",
    "83",
    "84",
    "85",
    "86",
    "87",
    "88",
    "89",
    "90",
    "94",
    "95",
    "96",
    "97",
    "98",
    "99"
  ])

  # Generate remaining digits
  defp generate_suffix(length) do
    Enum.map_join(1..length, fn _ -> Faker.random_between(0, 9) end)
  end

  # Format the 8-digit number as XX XX XX XX
  defp format_number(number) do
    <<d1, d2, d3, d4, d5, d6, d7, d8>> = number
    "#{<<d1, d2>>} #{<<d3, d4>>} #{<<d5, d6>>} #{<<d7, d8>>}"
  end
end
