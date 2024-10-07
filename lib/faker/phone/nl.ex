defmodule Faker.Phone.Nl do
  import Faker, only: [samplerp: 2]

  @moduledoc """
  Functions for generating phone related data for the Netherlands
  """

  @doc """
  Returns a random phone number.

  ## Examples

      iex> Faker.Phone.Nl.number()
      "0495542646"
      iex> Faker.Phone.Nl.number()
      "0683297052"
      iex> Faker.Phone.Nl.number()
      "0031670203032"
      iex> Faker.Phone.Nl.number()
      "0707337603"
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
    "010#######",
    "020#######",
    "024#######",
    "0342######",
    "038#######",
    "0495######",
    "050#######",
    "070#######",
    "078#######",
    "085#######",
    "088#######",
    "003110#######"
  ])

  @doc """
  Returns a random landline phone number

  ## Examples

      iex> Faker.Phone.Nl.landline_number()
      "0501542646"
      iex> Faker.Phone.Nl.landline_number()
      "0342083297"
      iex> Faker.Phone.Nl.landline_number()
      "0505235702"
      iex> Faker.Phone.Nl.landline_number()
      "0883032097"
  """

  @spec landline_number() :: String.t()
  def landline_number do
    Faker.format(landline_number_format())
  end

  samplerp(:cell_number_format, [
    "06########",
    "00316########"
  ])

  @doc """
  Returns a random cell phone number

  ## Examples

      iex> Faker.Phone.Nl.cell_number()
      "0615426461"
      iex> Faker.Phone.Nl.cell_number()
      "0683297052"
      iex> Faker.Phone.Nl.cell_number()
      "0031657020303"
      iex> Faker.Phone.Nl.cell_number()
      "0609733760"
  """

  @spec cell_number() :: String.t()
  def cell_number do
    Faker.format(cell_number_format())
  end
end
