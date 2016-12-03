defmodule Faker.Color do
  @moduledoc """
  Functions for generating different color representations.
  """

  @doc """
  Return random RGB hex value.
  """
  @spec rgb_hex() :: binary
  def rgb_hex do
    "~2.16.0B~2.16.0B~2.16.0B"
    |> :io_lib.format(Tuple.to_list(rgb_decimal()))
    |> :erlang.iolist_to_binary
  end

  @doc """
  Return random RGB decimal value.
  """
  @spec rgb_decimal() :: {byte, byte, byte}
  def rgb_decimal do
    {
      :crypto.rand_uniform(0, 256),
      :crypto.rand_uniform(0, 256),
      :crypto.rand_uniform(0, 256)
    }
  end

  @doc """
  Return a random color name
  """
  @spec name() :: String.t
  def name do
    localised_module().name
  end

  @doc """
  Return a random fancy color name
  """
  @spec fancy_name() :: String.t
  def fancy_name do
    localised_module().fancy_name
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale)
end
