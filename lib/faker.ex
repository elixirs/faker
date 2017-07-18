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
    format(tail, <<acc :: binary, "#{Faker.random(9)}">>)
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
    Enum.at(@alphabet, Faker.random(Enum.count(@alphabet) - 1))
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
  Returns a positive integer between 0 and total.

  ## Examples

      iex> random(5) in [0, 1, 2, 3, 4, 5]
      true
  """
  @spec random(integer) :: integer
  def random(total) do
    random(Application.get_env(:faker, :random_function), total)
  end

  defp random({mod, fun}, total), do: apply(mod, fun, [total])

  @doc """
  Library default implementation of Faker.random/1.
  """
  @spec default_random(integer) :: integer
  def default_random(total), do: :rand.uniform(total + 1) - 1

  @doc """
  Returns a random float in the value range 0.0 =< X < 1.0.

  ## Examples

      iex> is_float(random_uniform())
      true
  """
  @spec random_uniform() :: float
  def random_uniform do
    random_uniform(Application.get_env(:faker, :random_uniform_function))
  end

  defp random_uniform({mod, fun}), do: apply(mod, fun, [])

  @doc """
  Library default implementation of Faker.random_uniform/0.
  """
  @spec default_random_uniform() :: float
  def default_random_uniform do
    :rand.seed(:exs64, :os.timestamp)
    :rand.uniform()
  end

  @doc """
  Returns a (pseudo) random number as an integer between the range intervals.

  ## Examples

      iex> random_between(3..7) in [3, 4, 5, 6, 7]
      true
  """
  @spec random_between(Range.t) :: integer
  def random_between(min..max) do
    :faker
    |> Application.get_env(:random_between_function)
    |> random_between(min..max)
  end

  defp random_between({mod, fun}, min..max), do: apply(mod, fun, [min..max])

  @doc """
  Library default implementation of Faker.random_between/1.
  """
  @spec default_random_between(Range.t) :: integer
  def default_random_between(min..max) do
    :rand.uniform(max - min + 1) + min - 1
  end

  @doc """
  Returns a random byte.
  """
  @spec random_bytes(pos_integer) :: binary
  def random_bytes(total) do
    random_bytes(Application.get_env(:faker, :random_bytes_function), total)
  end

  defp random_bytes({mod, fun}, total), do: apply(mod, fun, [total])

  @doc """
  Library default implementation of Faker.random_bytes/1.
  """
  @spec default_random_bytes(pos_integer) :: binary
  def default_random_bytes(total), do: :crypto.strong_rand_bytes(total)

  defmacro sampler(name, data) do
    count = Enum.count(data)
    mapped_data = data |> Enum.with_index |> Enum.into(%{}, fn({k, v}) -> {v, k} end) |> Macro.escape()

    quote do
      def unquote(name)() do
        unquote(mapped_data)
        |> Map.get(Faker.random(unquote(count - 1)))
      end
    end
  end

  defmacro samplerp(name, data) do
    count = Enum.count(data)
    mapped_data = data |> Enum.with_index |> Enum.into(%{}, fn({k, v}) -> {v, k} end) |> Macro.escape()

    quote do
      defp unquote(name)() do
        unquote(mapped_data)
        |> Map.get(Faker.random(unquote(count - 1)))
      end
    end
  end
end
