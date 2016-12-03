defmodule Faker.Phone.EnGb do
  import Faker, only: [samplerp: 2]

  @moduledoc """
  This follows the rules of
  [Telephone numbers in the United Kingdom](https://en.wikipedia.org/wiki/Telephone_numbers_in_the_United_Kingdom).
  """

  @prefixes %{
    "International dialling" => ["0"],
    "Geographic numbers with area codes - for list see telephone area codes" => ["1"],
    "Geographic numbers with area codes - for list see telephone area codes" => ["2"],
    "Geographic rate numbers - used by public sector and not-for-profit bodies" => ["30"],
    "Geographic rate numbers - new allocations" => ["33"],
    "Geographic rate numbers - migrating numbers from matching 084 numbers" => ["34"],
    "Geographic rate numbers - migrating numbers from matching 087 numbers" => ["37"],
    "Corporate numbers" => ["55"],
    "Location independent electronic communications service (VoIP)" => ["56"],
    "Personal numbering service" => ["70"],
    "Radiopaging services" => ["76"],
    "Freephone numbers" => ["80"],
    "Internet for schools" => ["82"],
    "Basic revenue share numbers" => ["84"],
    "Higher rate revenue share numbers" => ["87"],
    "Premium Rate Services (PRS) revenue share numbers" => ["90", "91"],
    "Sexual Entertainment Services (SES) revenue share at a premium rate" => ["908", "909", "98"]
  }

  @doc """
  Returns a random UK phone number
  """
  @spec number() :: String.t
  def number do
    if :crypto.rand_uniform(0, 2) == 0 do
      landline_number()
    else
      cell_number()
    end
  end

  @doc """
  Returns a random UK landline phone number
  """
  @spec landline_number() :: String.t
  def landline_number do
    "+44#{number_prefix()}"
    |> random_numbers_until(12)
  end

  samplerp :cell_number_format, ["074## ######", "075## ######", "076## ######", "077## ######", "078## ######", "079## ######", "+4474## ######", "+4475## ######", "+4476## ######", "+4477## ######", "+4478## ######", "+4479## ######"]
  @doc """
  Returns a random UK mobile phone number
  """
  @spec cell_number() :: String.t
  def cell_number do
    Faker.format(cell_number_format())
  end

  @doc """
  Returns a random UK mobile phone number
  """
  @spec mobile_number() :: String.t
  defdelegate mobile_number, to: __MODULE__, as: :cell_number

  defp random_numbers_until(out, count) do
    char_count = out
    |> String.to_char_list
    |> Enum.count

    format = String.duplicate("#", count - char_count)

    "#{out}#{Faker.format(format)}"
  end

  defp number_prefix do
    numbers = Map.values(@prefixes)
    type = Enum.at(numbers, :crypto.rand_uniform(0, Enum.count(@prefixes)))
    Enum.at(type, :crypto.rand_uniform(0, Enum.count(type)))
  end
end
