defmodule Faker.String do
  @moduledoc """
  Function for generating Strings
  """

  @doc """
  Returns a random base64 String

  ## Examples

      iex> Faker.String.base64()
      "1tmLiMhm"
      iex> Faker.String.base64()
      "29Tee6SN"
      iex> Faker.String.base64()
      "Kfp7+Qco"
      iex> Faker.String.base64()
      "Z7xbfJZP"
  """
  @spec base64(integer) :: String.t()
  def base64(length \\ 8) do
    length
    |> Faker.random_bytes()
    |> Base.encode64()
    |> binary_part(0, length)
  end
end
