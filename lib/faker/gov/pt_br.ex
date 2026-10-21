defmodule Faker.Gov.PtBr do
  @moduledoc """
  Generating BR Taxpayer Identification numbers
  """

  @doc """
  Returns a random BR CPF number

  ## Examples

      iex> Faker.Gov.PtBr.cpf()
      "156.433.110-54"
      iex> Faker.Gov.PtBr.cpf()
      "939.261.401-27"
      iex> Faker.Gov.PtBr.cpf()
      "388.029.835-18"
      iex> Faker.Gov.PtBr.cpf()
      "567.079.304-86"
  """
  @spec cpf() :: String.t()
  def cpf do
    number = Faker.random_between(0, 999_999_999)

    if rem(number, 111_111_111) == 0 do
      cpf()
    else
      base = number |> Integer.to_string() |> String.pad_leading(9, "0")

      "#{base}#{check_digits(base)}"
      |> String.replace(~r/(\d{3})(\d{3})(\d{3})(\d{2})/, "\\1.\\2.\\3-\\4")
    end
  end

  defp check_digits(base) do
    first_check_digit = calculate_cpf_check_digit(base)
    second_check_digit = calculate_cpf_check_digit("#{base}#{first_check_digit}")

    "#{first_check_digit}#{second_check_digit}"
  end

  defp calculate_cpf_check_digit(base) do
    digits = base |> String.graphemes() |> Enum.map(&String.to_integer/1)

    sum =
      Enum.zip(digits, (length(digits) + 1)..2)
      |> Enum.map(fn {digit, weight} -> digit * weight end)
      |> Enum.reduce(&+/2)

    remainder = rem(sum, 11)

    if remainder < 2, do: 0, else: 11 - remainder
  end
end
