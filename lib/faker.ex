defmodule Faker do
  @moduledoc """
  Main module to start application with some helper functions.
  """

  @doc """
  Starts Faker with default locale.
  """
  @spec start() :: :ok
  def start do
    :application.start(:faker)
  end

  @doc """
  Starts Faker with `lang` locale.
  """
  @spec start(atom) :: :ok
  def start(lang) when is_atom(lang) do
    :application.start(:faker)
    Faker.locale(lang)
    :ok
  end

  @doc """
  Internal function to format string.

  It replaces `"#"` to random number and `"?"` to random latin letter.
  """
  @spec format(String.t) :: String.t
  def format(str) when is_binary(str) do
    format(str, "")
  end

  defp format(<<"#" :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, "#{Faker.random_between(0, 9)}">>)
  end

  defp format(<<"?" :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, letter()>>)
  end

  defp format(<<other :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, other>>)
  end

  defp format("", acc) do
    acc
  end

  @alphabet 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  defp letter do
    Enum.at(@alphabet, Faker.random_between(0, Enum.count(@alphabet) - 1))
  end

  @doc """
  Returns application locale ready for module constract.
  """
  @spec mlocale() :: String.t
  def mlocale do
    String.capitalize(to_string(Faker.locale))
  end

  @doc """
  Returns application locale.
  """
  @spec locale() :: atom
  def locale do
    Application.get_env(:faker, :locale)
  end

  @doc """
  Sets application locale.
  """
  @spec locale(atom) :: :ok
  def locale(lang) when is_atom(lang) do
    Application.put_env(:faker, :locale, lang)
  end

  @doc """
  Returns a random float in the value range 0.0 =< x < 1.0.

  ## Examples

      iex> is_float(random_uniform())
      true
  """
  @spec random_uniform() :: float
  def random_uniform do
    Application.get_env(:faker, :random_module).random_uniform
  end

  @doc """
  Returns a (pseudo) random number as an integer between the range intervals.

  ## Examples

      iex> random_between(3, 7) in [3, 4, 5, 6, 7]
      true
  """
  @spec random_between(integer, integer) :: integer
  def random_between(left, right) do
    Application.get_env(:faker, :random_module).random_between(left, right)
  end

  @doc """
  Returns a random bytes.
  """
  @spec random_bytes(pos_integer) :: binary
  def random_bytes(total) do
    Application.get_env(:faker, :random_module).random_bytes(total)
  end

  defmacro sampler(name, data) do
    count = Enum.count(data)
    mapped_data = data |> Enum.with_index |> Enum.into(%{}, fn({k, v}) -> {v, k} end) |> Macro.escape()

    quote do
      def unquote(name)() do
        unquote(mapped_data)
        |> Map.get(Faker.random_between(0, unquote(count - 1)))
      end
    end
  end

  defmacro samplerp(name, data) do
    count = Enum.count(data)
    mapped_data = data |> Enum.with_index |> Enum.into(%{}, fn({k, v}) -> {v, k} end) |> Macro.escape()

    quote do
      defp unquote(name)() do
        unquote(mapped_data)
        |> Map.get(Faker.random_between(0, unquote(count - 1)))
      end
    end
  end
end
