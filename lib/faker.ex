defmodule Faker do
  use Application.Behaviour

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    Faker.Supervisor.start_link
  end

  def format(str) when is_binary(str) do
    format(str, "")
  end

  defp format(<<"#" :: utf8, tail :: binary>>, "") do
    format(tail, "#{:crypto.rand_uniform(1, 10)}")
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
end
