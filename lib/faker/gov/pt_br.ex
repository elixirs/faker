defmodule Faker.Gov.PtBr do
  @moduledoc """
  Generating BR Taxpayer Identification numbers
  """

  @doc """
  Returns a random BR CPF number

  ## Examples

      iex> Faker.Gov.PtBr.cpf
      "396.517.511-55"
      iex> Faker.Gov.PtBr.cpf
      "457.899.570-88"
      iex> Faker.Gov.PtBr.cpf
      "283.058.997-33"
      iex> Faker.Gov.PtBr.cpf
      "294.304.877-66"
  """
  @spec cpf() :: String.t()
  def cpf do
    "#{area()}.#{group()}.#{serial()}-#{check_digits()}"
    |> String.replace(~r/(\d{3})(\d{3})(\d{3})(\d{2})/, "\\1.\\2.\\3-\\4")
  end

  defp area do
    "#{Faker.random_between(0, 999)}" |> String.pad_leading(3, "0")
  end

  defp group do
    "#{Faker.random_between(0, 999)}" |> String.pad_leading(3, "0")
  end

  defp serial do
    "#{Faker.random_between(0, 999)}" |> String.pad_leading(3, "0")
  end

  defp check_digits do
    base = "#{area()}#{group()}#{serial()}"

    first_check_digit = calculate_cpf_check_digit(base)
    second_check_digit = calculate_cpf_check_digit("#{base}#{first_check_digit}")

    "#{first_check_digit}#{second_check_digit}"
  end

  defp calculate_cpf_check_digit(base) do
    digits = base |> String.graphemes() |> Enum.map(&String.to_integer/1)

    sum =
      Enum.zip(digits, [10, 9, 8, 7, 6, 5, 4, 3, 2])
      |> Enum.map(fn {digit, weight} -> digit * weight end)
      |> Enum.reduce(&+/2)

    remainder = rem(sum, 11)

    if remainder < 2, do: 0, else: 11 - remainder
  end
end
