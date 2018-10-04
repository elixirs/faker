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
end
