defmodule Faker.String do
  @moduledoc """
  Function for generating Strings
  """

  @doc """
  Returns a random base64 String
  """
  @spec base64(integer) :: String.t
  def base64(length \\ 8) do
    length
    |> :crypto.strong_rand_bytes()
    |> Base.encode64()
    |> binary_part(0, length)
  end
end
