defmodule Faker.Phone.EnUs do
  @moduledoc """
  This follows the rules outlined in the North American Numbering Plan
  at https://en.wikipedia.org/wiki/North_American_Numbering_Plan.

  The NANP number format may be summarized in the notation NPA-NXX-xxxx:

  The allowed ranges for NPA (area code) are: [2–9] for the first digit, and
  [0-9] for the second and third digits. The NANP is not assigning area codes
  with 9 as the second digit.

  The allowed ranges for NXX (central office/exchange) are: [2–9] for the first
  digit, and [0–9] for both the second and third digits (however, in geographic
  area codes the third digit of the exchange cannot be 1 if the second digit is
  also 1).

  The allowed ranges for xxxx (subscriber number) are [0–9] for each of the four
  digits.
  """

  @doc """
  Returns a random US phone number

  Possible returned formats:

    (123) 456-7890
    123/456-7890
    123-456-7890
    123.456.7890
    1234567890
  """
  @spec phone() :: String.t
  def phone do
    phone(digit(0, 3))
  end

  defp phone(0), do: "(#{area_code()}) #{exchange_code()}-#{subscriber_number()}"
  defp phone(1), do: "#{area_code()}/#{exchange_code()}-#{subscriber_number()}"
  defp phone(_) do
    sep = std_separator()
    "#{area_code()}#{sep}#{exchange_code()}#{sep}#{subscriber_number()}"
  end

  @doc """
  Returns a random area code
  """
  @spec area_code() :: String.t
  def area_code do
    [digit(2, 9), digit(0, 8), digit(0, 9)] |> Enum.join
  end

  @doc """
  Returns a random exchange code
  """
  @spec exchange_code() :: String.t
  def exchange_code do
    second_dig = digit(0, 9)
    third_dig =
      case second_dig do
        1 -> digit(2, 9)
        _ -> digit(1, 9)
      end
    [digit(2, 9), second_dig, third_dig] |> Enum.join
  end

  @doc """
  Returns a random subscriber number `n` digits long
  """
  @spec subscriber_number(n :: Integer.t) :: String.t
  def subscriber_number(n) when is_integer(n) do
    Faker.format(String.duplicate("#", n))
  end
  @spec subscriber_number() :: String.t
  def subscriber_number, do: subscriber_number(4)

  @doc """
  Returns a random extension `n` digits long
  """
  defdelegate extension(n), to: __MODULE__, as: :subscriber_number
  defdelegate extension, to: __MODULE__, as: :subscriber_number

  defp std_separator, do: Enum.at(["-", ".", ""], digit(0, 3))

  defp digit(min, max), do: :crypto.rand_uniform(min, max)
end
