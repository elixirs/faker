defmodule Faker.Nato do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating NATO alphabet data
  """

  @doc """
  Returns a random letter NATO code
  """
  @spec letter_code_word :: String.t
  sampler :letter_code_word, ["ALPHA", "BRAVO", "CHARLIE", "DELTA", "ECHO", "FOXTROT", "GOLF", "HOTEL", "INDIA", "JULIETT", "KILO", "LIMA", "MIKE", "NOVEMBER", "OSCAR", "PAPA", "QUEBEC", "ROMEO", "SIERRA", "TANGO", "UNIFORM", "VICTOR", "WHISKEY", "XRAY", "YANKEE", "ZULU"]

  @doc """
  Returns a random digit NATO code
  """
  @spec digit_code_word :: String.t
  sampler :digit_code_word, ["ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE", "ZERO"]

  @doc """
  Returns the NATO stop code
  """
  @spec stop_code_word :: String.t
  def stop_code_word, do: "STOP"

  @doc """
  Returns a random NATO callsign of the form [alpha]-[alpha]-[digit]
  """
  @spec callsign() :: String.t
  def callsign, do: format("?-?-#")

  @doc """
  Formats a string using the NATO alphabet.

  It replaces `"#"` to a random NATO digit, `"?"` to random NATO letter
  and `"."` to the stop code.
  """
  @spec format(String.t) :: String.t
  def format(str) when is_binary(str) do
    format(str, "")
  end

  defp format(<<"#" :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, "#{digit_code_word()}">>)
  end

  defp format(<<"?" :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, "#{letter_code_word()}">>)
  end

  defp format(<<"." :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, "#{stop_code_word()}">>)
  end

  defp format(<<other :: utf8, tail :: binary>>, acc) do
    format(tail, <<acc :: binary, other>>)
  end

  defp format("", acc) do
    acc
  end
end
