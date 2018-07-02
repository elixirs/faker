defmodule Faker.Gov.Us do
  @moduledoc """
  Generating US Social Security numbers
  """

  @doc """
  Returns a random US Social Security number

  ## Examples

      iex> Faker.Gov.Us.ssn
      "838-84-5749"
      iex> Faker.Gov.Us.ssn
      "719-41-8674"
      iex> Faker.Gov.Us.ssn
      "213-54-3766"
      iex> Faker.Gov.Us.ssn
      "379-09-6851"
  """
  @spec ssn() :: String.t()
  def ssn do
    "#{area()}-#{group()}-#{serial()}"
  end

  defp area do
    case "#{Faker.random_between(1, 899)}" do
      "666" -> "667"
      n -> n |> String.pad_leading(3, "0")
    end
  end

  defp group, do: "#{Faker.random_between(1, 99)}" |> String.pad_leading(2, "0")
  defp serial, do: "#{Faker.random_between(1, 9999)}" |> String.pad_leading(4, "0")
end
