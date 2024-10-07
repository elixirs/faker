defmodule Faker.Phone.Ke do
  import Faker, only: [samplerp: 2]

  @moduledoc """
  Functions for generating phone related data for Kenya
  """

  @doc """
  Returns a random phone number.

  ## Examples

      iex> Faker.Phone.Ke.number()
      "+254115628209"
      iex> Faker.Phone.Ke.number()
      "+254162562860"
      iex> Faker.Phone.Ke.number()
      "+254709999999"
      iex> Faker.Phone.Ke.number()
      "+257362091134"
  """

  @spec number() :: String.t()
  def number do
    if Faker.random_between(0, 1) == 0 do
      landline_number()
    else
      cell_number()
    end
  end

  samplerp(:landline_number_format, [
    "#######",
    "#######"
  ])

   @doc """
  Returns a 2 digit random area code

  ## Examples

      iex> Faker.Phone.Ke.area_code()
      "20"
      iex> Faker.Phone.Ke.area_code()
      "42"
      iex> Faker.Phone.Ke.area_code()
      "52"
      iex> Faker.Phone.Ke.area_code()
      "34"
  """
  @spec area_code() :: String.t()
  def area_code do
    [digit(0, 9), digit(0, 9)] |> Enum.join()
  end

  @doc """
  Returns a random landline phone number.

  ## Examples

      iex> Faker.Phone.Ke.landline_number()
      "+254362091134"
      iex> Faker.Phone.Ke.landline_number()
      "+254451151075"
      iex> Faker.Phone.Ke.landline_number()
      "+254567096040"
      iex> Faker.Phone.Ke.landline_number()
      "+254317703793"
  """

  @spec landline_number() :: String.t()
  def landline_number do
   "+254" <> area_code() <>  Faker.format(landline_number_format())
  end

  samplerp(:cell_number_format, [
    "########",
    "########",
    "########",
    "########"
  ])

  @doc """
  Returns a random cell phone number

  ## Examples

      iex> Faker.Phone.Ke.cell_number()
      "919999999"
      iex> Faker.Phone.Ke.cell_number()
      "929999999"
      iex> Faker.Phone.Ke.cell_number()
      "939999999"
      iex> Faker.Phone.Ke.cell_number()
      "969999999"
  """

  @spec cell_number() :: String.t()
  def cell_number do
    "+254" <> Enum.random(["7","1"]) <> Faker.format(cell_number_format())
  end

  defp digit(min, max), do: Faker.random_between(min, max)
end
