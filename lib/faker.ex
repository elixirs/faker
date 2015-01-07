defmodule Faker do
  @moduledoc """
  Faker is a pure Elixir library for generating fake data.
  """

  @doc """
  Internal function to format string.

  It replaces `"#"` to random number and `"?"` to random latin letter.
  """
  @spec format(binary) :: binary
  def format(str) when is_binary(str) do
    format(str, "")
  end

  defp format(<<"#" :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, "#{:crypto.rand_uniform(0, 10)}">>)
  end

  defp format(<<"?" :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, letter>>)
  end

  defp format(<<other :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, other>>)
  end

  defp format("", acc) do
    acc
  end

  defp letter do
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    Enum.at(alphabet, :crypto.rand_uniform(0, Enum.count(alphabet)))
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
end
