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
      iex> Faker.String.base64(5)
      "Kfp7+"
      iex> Faker.String.base64(100)
      "KLJyZ7xbfJZPMy3J7dAsyfOB3vnZIqFGv4VQil8D/xh1C/Nj9K7xJk47zJtcKsy5mjpJk61Wt3jcJu3bfgwuScTmOOYt4ykzvDUl"
  """
  @spec base64(pos_integer) :: String.t()
  def base64(length \\ 8) do
    length
    |> Faker.random_bytes()
    |> Base.encode64()
    |> binary_part(0, length)
  end

  @doc """
  Returns a random hexadecimal String
  ## Examples
      iex> Faker.String.hexadecimal()
      "d6d98b88c866f496dbd4de7ba48d0f52"
      iex> Faker.String.hexadecimal()
      "c9edd02cc9f381def9d922a146bf8550"
      iex> Faker.String.hexadecimal(5)
      "9b5c2"
      iex> Faker.String.hexadecimal(100)
      "9a3a4993ad56b778dc26eddb7e0c2e49c4e638e62de32933bc3525bb4594a1a378dc29f741dd703efd94dd3b6d08feaa53a9"
  """
  @spec hexadecimal(pos_integer) :: String.t()
  def hexadecimal(length \\ 32) do
    length
    |> Faker.random_bytes()
    |> Base.encode16(case: :lower)
    |> binary_part(0, length)
  end
end
