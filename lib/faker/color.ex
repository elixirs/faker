defmodule Faker.Color do
  import Faker, only: [localize: 1]

  @moduledoc """
  Functions for generating different color representations.
  """

  @doc """
  Return random RGB hex value.

  ## Examples

      iex> Faker.Color.rgb_hex()
      "D6D98B"
  """
  @spec rgb_hex() :: binary
  def rgb_hex do
    "~2.16.0B~2.16.0B~2.16.0B"
    |> :io_lib.format(Tuple.to_list(rgb_decimal()))
    |> :erlang.iolist_to_binary()
  end

  @doc """
  Return random RGB decimal value.

  ## Examples

      iex> Faker.Color.rgb_decimal()
      {214, 217, 139}
  """
  @spec rgb_decimal() :: {byte, byte, byte}
  def rgb_decimal do
    {
      Faker.random_between(0, 255),
      Faker.random_between(0, 255),
      Faker.random_between(0, 255)
    }
  end

  @doc """
  Return a random color name

  ## Examples

      iex> Faker.Color.name()
      "Red"
  """
  @spec name() :: String.t()
  localize(:name)

  @doc """
  Return a random fancy color name

  ## Examples

      iex> Faker.Color.fancy_name()
      "Tawny"
  """
  @spec fancy_name() :: String.t()
  localize(:fancy_name)
end
