defmodule Faker.Lorem do
  import Faker.Config, only: [locale: 0]

  data_path = Path.expand(Path.join(__DIR__, "../../priv/lorem.json"))
  {:ok, json} = File.read(data_path)
  {:ok, json} = JSEX.decode(json, [{:labels, :binary}])
  Enum.each json, fn({lang, functions}) ->
    Enum.each functions, fn({fun, list}) ->
      defp unquote(binary_to_atom("#{fun}_count"))(unquote(binary_to_atom(lang))) do
        unquote(Enum.count(list))
      end
      Enum.each Enum.with_index(list), fn({el, index}) ->
        defp unquote(binary_to_atom("get_#{fun}"))(unquote(binary_to_atom(lang)), unquote(index+1)) do
          unquote(el)
        end
      end
    end
  end

  def characters({ Range, min, max } \\ { Range, 15, 255 }) do
    characters(:crypto.rand_uniform(min, max+1))
  end

  def characters(num) do
    Stream.repeatedly(&character/0)
    |> Enum.take(num)
  end

  def paragraph({ Range, min, max } \\ { Range, 2, 5 }) do
    paragraph(:crypto.rand_uniform(min, max+1))
  end

  def paragraph(num) do
    sentences(num)
    |> Enum.join(" ")
  end

  def paragraphs({ Range, min, max } \\ { Range, 2, 5 }) do
    paragraphs(:crypto.rand_uniform(min, max+1))
  end

  def paragraphs(num) do
    Stream.repeatedly(&paragraph/0)
    |> Enum.take(num)
  end

  def sentence({ Range, min, max } \\ { Range, 4, 10 }) do
    sentence(:crypto.rand_uniform(min, max+1), hd(Enum.shuffle([".", ".", ".", "!", "?"])))
  end

  def sentence(num, mark) when is_integer(num) and is_binary(mark) do
    tmp = words(num)
    |> Enum.join(" ")
    |> String.capitalize
    tmp <> mark
  end

  def sentences({ Range, min, max } \\ { Range, 2, 5 }) do
    sentences(:crypto.rand_uniform(min, max+1))
  end

  def sentences(num) do
    Stream.repeatedly(&sentence/0)
    |> Enum.take(num)
  end

  def word do
    get_word(locale, :crypto.rand_uniform(1, word_count(locale)+1))
  end

  def words({ Range, min, max } \\ { Range, 3, 6 }) do
    words(:crypto.rand_uniform(min, max+1))
  end

  def words(num) do
    Stream.repeatedly(&word/0)
    |> Enum.take(num)
  end

  defp character do
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
    Enum.at(alphabet, :crypto.rand_uniform(0, Enum.count(alphabet)))
  end
  defp get_word(_, n), do: get_word(:en, n)
  defp word_count(_), do: word_count(:en)
end
