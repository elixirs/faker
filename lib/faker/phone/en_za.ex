defmodule Faker.Phone.EnZa do
  import Faker, only: [samplerp: 2]

  @moduledoc """
  This follows the rules outlined in the Telephone numbers in South Africa
  at https://en.wikipedia.org/wiki/Telephone_numbers_in_South_Africa


  The NPR (Numbering Plan Regulations) number format may be summarized in the notation (AB)XXX-XXXX:
  Access codes:
  - Country calling code = +27, appended for internationally calling
  - Trunk prefix = 0, appended for calling within the country

  The allowed area codes within the system are generally organized geographically, per province/state.
  The telephone within the system comes in two formats, landline and cellular.

  The allowed numbers ranges are:

    Landline format range:
    - [011-058]

    Cellular format range:
    - [060-089]
  """

  @mobile_start_digit 6
  @landline_start_digit 1
  @number_formats ~w(cellular landline)a

  @doc """
  Returns a random ZA phone number

  Possible returned formats:
    0113456789
    0603456789
    0713456789
    27613456789
    0823456789

  ## Examples
      iex> Faker.Phone.EnZa.phone()
      "0603456789"
      iex> Faker.Phone.EnZa.phone()
      "27823456789"
      iex> Faker.Phone.EnZa.phone()
      "27613456789"
      iex> Faker.Phone.EnZa.phone()
      "0113456789"
  """
  @spec phone() :: String.t()
  def phone() do
    @number_formats
    |> Enum.random()
    |> phone_output_format()
  end

  @doc """
    Returns a random ZA cell phone number

    ## Examples
      iex> Faker.Phone.EnZa.cell_number()
      "0603456789"
      iex> Faker.Phone.EnZa.cell_number()
      "27823456789"
      iex> Faker.Phone.EnZa.cell_number()
      "27613456789"
      iex> Faker.Phone.EnZa.cell_number()
      "27713456789"
  """
  @spec cell_number() :: String.t()
  def cell_number(), do: phone_output_format(:cellular)

  @doc """
    Returns a random ZA landline phone number

    ## Examples
      iex> Faker.Phone.EnZa.landline_number()
      "0113456789"
      iex> Faker.Phone.EnZa.landline_number()
      "0123456789"
      iex> Faker.Phone.EnZa.landline_number()
      "0133456789"
      iex> Faker.Phone.EnZa.landline_number()
      "0143456789"
  """
  @spec landline_number() :: String.t()
  def landline_number(), do: phone_output_format(:landline)

  @spec phone_output_format(Atom.t()) :: String.t()
  defp phone_output_format(_output_format = :cellular) do
    cellular_number_format()
    |> number_format(@mobile_start_digit)
  end

  defp phone_output_format(_output_format = :landline) do
    landline_number_format()
    |> number_format(@landline_start_digit)
  end

  @spec number_format(String.t(), number()) :: String.t()
  defp number_format(phone_number, initial_n) do
    phone_number
    |> String.replace("x", "#{digit(initial_n, 8)}")
    |> Faker.format()
  end

  defp digit(min, max), do: Faker.random_between(min, max)

  samplerp(:cellular_number_format, [
    "0x########",
    "27x########"
  ])

  samplerp(:landline_number_format, [
    "01x#######"
  ])
end
