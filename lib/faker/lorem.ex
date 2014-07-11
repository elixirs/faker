defmodule Faker.Lorem do
  data_path = Path.expand(Path.join(__DIR__, "../../priv/lorem.json"))
  {:ok, json} = File.read(data_path)
  {:ok, json} = JSEX.decode(json, [{:labels, :binary}])
  Enum.each json, fn({lang, functions}) ->
    Enum.each functions, fn({fun, list}) ->
      defp unquote(String.to_atom("#{fun}_count"))(unquote(String.to_atom(lang))) do
        unquote(Enum.count(list))
      end
      Enum.each Enum.with_index(list), fn({el, index}) ->
        defp unquote(String.to_atom("get_#{fun}"))(unquote(String.to_atom(lang)), unquote(index+1)) do
          unquote(el)
        end
      end
    end
  end

  def characters(range \\ %Range{first: 15, last: 255})

  def characters(%Range{first: first, last: last}) do
    characters(:crypto.rand_uniform(first, last+1))
  end

  def characters(num) do
    Stream.repeatedly(&character/0)
    |> Enum.take(num)
  end

  def paragraph(range \\ %Range{first: 2, last: 5})

  def paragraph(%Range{first: first, last: last}) do
    paragraph(:crypto.rand_uniform(first, last+1))
  end

  def paragraph(num) do
    sentences(num)
    |> Enum.join(" ")
  end

  def paragraphs(range \\ %Range{first: 2, last: 5})

  def paragraphs(%Range{first: first, last: last}) do
    paragraphs(:crypto.rand_uniform(first, last+1))
  end

  def paragraphs(num) do
    Stream.repeatedly(&paragraph/0)
    |> Enum.take(num)
  end

  def sentence(range \\ %Range{first: 4, last: 10})

  def sentence(%Range{first: first, last: last}) do
    sentence(:crypto.rand_uniform(first, last+1), hd(Enum.shuffle([".", ".", ".", "!", "?"])))
  end

  def sentence(num) do
    sentence(num, hd(Enum.shuffle([".", ".", ".", "!", "?"])))
  end

  def sentence(num, mark) when is_integer(num) and is_binary(mark) do
    tmp = words(num)
    |> Enum.join(" ")
    |> String.capitalize
    tmp <> mark
  end

  def sentences(range \\ %Range{first: 2, last: 5})

  def sentences(%Range{first: first, last: last}) do
    sentences(:crypto.rand_uniform(first, last+1))
  end

  def sentences(num) do
    Stream.repeatedly(&sentence/0)
    |> Enum.take(num)
  end

  def word do
    get_word(Faker.locale, :crypto.rand_uniform(1, word_count(Faker.locale)+1))
  end

  def words(range \\ %Range{first: 3, last: 6})

  def words(%Range{first: first, last: last}) do
    words(:crypto.rand_uniform(first, last+1))
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
