defmodule Faker do
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

  def locale do
    Application.get_env(:faker, :locale)
  end

  def locale(lang) when is_atom(lang) do
    Application.put_env(:faker, :locale, lang)
  end

  def decode_dict(file_basename) do
    dict_path(file_basename) |> File.read! |> JSEX.decode!
  end

  defp dict_path(file_basename) do
    Path.expand(
      Path.join(__DIR__, "../priv/#{file_basename}.json")
    )
  end
end
