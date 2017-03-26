defmodule Faker.Lorem do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating Lorem Ipsum data
  """

  @doc """
  Returns a random word from @data
  """
  @spec word() :: String.t
  sampler :word, ["alias", "consequatur", "aut", "perferendis", "sit", "voluptatem", "accusantium", "doloremque", "aperiam", "eaque", "ipsa", "quae", "ab", "illo", "inventore", "veritatis", "et", "quasi", "architecto", "beatae", "vitae", "dicta", "sunt", "explicabo", "aspernatur", "aut", "odit", "aut", "fugit", "sed", "quia", "consequuntur", "magni", "dolores", "eos", "qui", "ratione", "voluptatem", "sequi", "nesciunt", "neque", "dolorem", "ipsum", "quia", "dolor", "sit", "amet", "consectetur", "adipisci", "velit", "sed", "quia", "non", "numquam", "eius", "modi", "tempora", "incidunt", "ut", "labore", "et", "dolore", "magnam", "aliquam", "quaerat", "voluptatem", "ut", "enim", "ad", "minima", "veniam", "quis", "nostrum", "exercitationem", "ullam", "corporis", "nemo", "enim", "ipsam", "voluptatem", "quia", "voluptas", "sit", "suscipit", "laboriosam", "nisi", "ut", "aliquid", "ex", "ea", "commodi", "consequatur", "quis", "autem", "vel", "eum", "iure", "reprehenderit", "qui", "in", "ea", "voluptate", "velit", "esse", "quam", "nihil", "molestiae", "et", "iusto", "odio", "dignissimos", "ducimus", "qui", "blanditiis", "praesentium", "laudantium", "totam", "rem", "voluptatum", "deleniti", "atque", "corrupti", "quos", "dolores", "et", "quas", "molestias", "excepturi", "sint", "occaecati", "cupiditate", "non", "provident", "sed", "ut", "perspiciatis", "unde", "omnis", "iste", "natus", "error", "similique", "sunt", "in", "culpa", "qui", "officia", "deserunt", "mollitia", "animi", "id", "est", "laborum", "et", "dolorum", "fuga", "et", "harum", "quidem", "rerum", "facilis", "est", "et", "expedita", "distinctio", "nam", "libero", "tempore", "cum", "soluta", "nobis", "est", "eligendi", "optio", "cumque", "nihil", "impedit", "quo", "porro", "quisquam", "est", "qui", "minus", "id", "quod", "maxime", "placeat", "facere", "possimus", "omnis", "voluptas", "assumenda", "est", "omnis", "dolor", "repellendus", "temporibus", "autem", "quibusdam", "et", "aut", "consequatur", "vel", "illum", "qui", "dolorem", "eum", "fugiat", "quo", "voluptas", "nulla", "pariatur", "at", "vero", "eos", "et", "accusamus", "officiis", "debitis", "aut", "rerum", "necessitatibus", "saepe", "eveniet", "ut", "et", "voluptates", "repudiandae", "sint", "et", "molestiae", "non", "recusandae", "itaque", "earum", "rerum", "hic", "tenetur", "a", "sapiente", "delectus", "ut", "aut", "reiciendis", "voluptatibus", "maiores", "doloribus", "asperiores", "repellat"]

  @doc """
  Returns a character list with a random length (in between the specified range)
  If no range is provided, defaults to 15..255
  """
  @spec characters(Range.t) :: [char]
  def characters(range \\ %Range{first: 15, last: 255})

  def characters(%Range{first: first, last: last}) do
    characters(:crypto.rand_uniform(first, last + 1))
  end

  @doc """
  Returns a character list. It's length is determined by the parameter provided
  """
  @spec characters(integer) :: [char]
  def characters(num) do
    Stream.repeatedly(&character/0)
    |> Enum.take(num)
  end

  @doc """
  Returns a string with a random amount of sentences (in between the specified
  range)
  If no range is specified it defaults to 2..5
  """
  @spec paragraph(integer | Range.t) :: String.t
  def paragraph(range \\ %Range{first: 2, last: 5})

  def paragraph(%Range{first: first, last: last}) do
    paragraph(:crypto.rand_uniform(first, last + 1))
  end

  @doc """
  Returns a string with an amount of sentences equal to the parameter provided
  """
  def paragraph(num) do
    num
    |> sentences()
    |> Enum.join(" ")
  end

  @doc """
  Returns a list with a random amount of paragraphs (in between the specified
  range)
  If no range is specified it defaults to 2..5
  """
  @spec paragraphs(Range.t) :: list(String.t)
  def paragraphs(range \\ %Range{first: 2, last: 5})

  def paragraphs(%Range{first: first, last: last}) do
    paragraphs(:crypto.rand_uniform(first, last + 1))
  end

  @doc """
  Returns a list with an amount of paragraphs equal to the parameter provided
  """
  @spec paragraphs(integer) :: list(String.t)
  def paragraphs(num) do
    Stream.repeatedly(&paragraph/0)
    |> Enum.take(num)
  end

  @doc """
  Returns a string with a random amount of words (in between the specified
  range)
  If no range is specified it defaults to 4..10
  """
  @spec sentence(Range.t) :: String.t
  def sentence(range \\ %Range{first: 4, last: 10})

  def sentence(%Range{first: first, last: last}) do
    first
    |> :crypto.rand_uniform(last + 1)
    |> sentence(hd(Enum.shuffle([".", ".", ".", "!", "?"])))
  end

  @doc """
  Returns a string with an amount of words equal to the parameter provided
  """
  @spec sentence(integer) :: String.t
  def sentence(num) do
    sentence(num, hd(Enum.shuffle([".", ".", ".", "!", "?"])))
  end

  @doc """
  Returns a string with an amount of words equal to the parameter provided,
  concatenating the specified mark
  """
  @spec sentence(integer, binary) :: String.t
  def sentence(num, mark) when is_integer(num) and is_binary(mark) do
    tmp = num
    |> words()
    |> Enum.join(" ")
    |> String.capitalize
    tmp <> mark
  end

  @doc """
  Returns a list of strings each string representing a sentence.
  The length of the list is random (calculated in between the range provided)
  If no range is provided it defaults to 2..5
  """
  @spec sentences(Range.t) :: [String.t]
  def sentences(range \\ %Range{first: 2, last: 5})

  def sentences(%Range{first: first, last: last}) do
    sentences(:crypto.rand_uniform(first, last + 1))
  end

  @doc """
  Returns a list of strings of length equal to the parameter provided
  """
  @spec sentences(integer) :: [String.t]
  def sentences(num) do
    Stream.repeatedly(&sentence/0)
    |> Enum.take(num)
  end

  @doc """
  Returns a list of strings each representing a word.
  The length of the list is random (calculated between the range provided)
  If no range is provided it defaults to 3..6
  """
  @spec words(Range.t) :: [String.t]
  def words(range \\ %Range{first: 3, last: 6})

  def words(%Range{first: first, last: last}) do
    words(:crypto.rand_uniform(first, last + 1))
  end

  @doc """
  Returns a list of strings representing a word.
  The length of the list equals the parameter provided
  """
  @spec words(integer) :: [String.t]
  def words(num) do
    Stream.repeatedly(&word/0)
    |> Enum.take(num)
  end

  defp character do
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
    Enum.at(alphabet, :crypto.rand_uniform(0, Enum.count(alphabet)))
  end
end
