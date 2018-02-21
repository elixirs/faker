defmodule Faker.Gov.Us do

  @moduledoc"""
  Generating US Social Security numbers
  """

  @doc """
  Returns a random US Social Security number
  """
  @spec ssn() :: String.t
  def ssn do
    # Certain numbers are invalid for U.S. SSNs. The area (first 3 digits)
    # cannot be 666 or 900-999. The group number (middle digits) cannot be
    # 00. The serial (last 4 digits) cannot be 0000.

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
