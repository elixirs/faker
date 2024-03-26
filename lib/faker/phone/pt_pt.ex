defmodule Faker.Phone.PtPt do
  import Faker, only: [samplerp: 2]

  @moduledoc """
  Functions for generating phone related data for portugal location
  """

  @doc """
  Returns a random phone number.

  ## Examples

      iex> Faker.Phone.PtPt.number()
      "929999999"
      iex> Faker.Phone.PtPt.number()
      "919999999"
      iex> Faker.Phone.PtPt.number()
      "234999999"
      iex> Faker.Phone.PtPt.number()
      "939999999"
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
    "21#######",
    "22#######",
    "231######",
    "232######",
    "233######",
    "234######",
    "235######",
    "236######",
    "238######",
    "239######",
    "241######",
    "242######",
    "243######",
    "244######",
    "245######",
    "249######",
    "251######",
    "252######",
    "253######",
    "254######",
    "255######",
    "256######",
    "257######",
    "258######",
    "259######",
    "261######",
    "262######",
    "263######",
    "265######",
    "266######",
    "268######",
    "269######",
    "271######",
    "272######",
    "273######",
    "274######",
    "275######",
    "276######",
    "277######",
    "278######",
    "279######",
    "281######",
    "282######",
    "283######",
    "284######",
    "285######",
    "286######",
    "289######",
    "291######",
    "292######",
    "295######",
    "296######"
  ])

  @doc """
  Returns a random landline phone number

  ## Examples

      iex> Faker.Phone.PtPt.landline_number()
      "253999999"
      iex> Faker.Phone.PtPt.landline_number()
      "252999998"
      iex> Faker.Phone.PtPt.landline_number()
      "261999997"
      iex> Faker.Phone.PtPt.landline_number()
      "296999996"
  """

  @spec landline_number() :: String.t()
  def landline_number do
    Faker.format(landline_number_format())
  end

  samplerp(:cell_number_format, [
    "91#######",
    "92#######",
    "93#######",
    "96#######"
  ])

  @doc """
  Returns a random cell phone number

  ## Examples

      iex> Faker.Phone.PtPt.cell_number()
      "919999999"
      iex> Faker.Phone.PtPt.cell_number()
      "929999999"
      iex> Faker.Phone.PtPt.cell_number()
      "939999999"
      iex> Faker.Phone.PtPt.cell_number()
      "969999999"
  """

  @spec cell_number() :: String.t()
  def cell_number do
    Faker.format(cell_number_format())
  end
end
