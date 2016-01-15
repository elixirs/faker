defmodule Faker.Phone.EnGb do

  @moduledoc """
  Functions for contact data in English
  """

  @doc """
  Returns a random UK phone number
  """
  @spec phone_number() :: String.t
  def phone_number do
    "+44#{number_prefix(:random)}"
    |> random_numbers_until(12)
  end

  defp random_numbers_until(out, count) do
    char_count = out
    |> String.to_char_list
    |> Enum.count

    format = "#"
    |> String.duplicate(count - char_count)

    "#{out}#{Faker.format(format)}"
  end

  defp number_prefix(:random) do
    numbers = Map.values(number_prefix)
    type = Enum.at(numbers, :crypto.rand_uniform(0, Enum.count(numbers)))
    Enum.at(type, :crypto.rand_uniform(0, Enum.count(type)))
  end

  # UK PhoneNumber Preferences
  # Reference: http://www.telephonenumbers.co.uk/Prefixes/i=1
  defp number_prefix do
    %{
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
      "Mobile services" => ["71", "72", "73", "74", "75", "77", "78", "79"],
      "Radiopaging services" => ["76"],
      "Freephone numbers" => ["80"],
      "Internet for schools" => ["82"],
      "Basic revenue share numbers" => ["84"],
      "Higher rate revenue share numbers" => ["87"],
      "Premium Rate Services (PRS) revenue share numbers" => ["90", "91"],
      "Sexual Entertainment Services (SES) revenue share at a premium rate" => ["908", "909", "98"]
    }
  end
end
