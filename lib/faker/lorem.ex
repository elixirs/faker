defmodule Faker.Lorem do
  import Faker, only: [sampler: 2]

  alias Faker.Util

  @moduledoc """
  Functions for generating Lorem Ipsum data
  """

  @doc """
  Returns a random word from @data

  ## Examples

      iex> Faker.Lorem.word()
      #=> "aut"
  """
  @spec word() :: String.t
  sampler :word, ["alias", "consequatur", "aut", "perferendis", "sit", "voluptatem", "accusantium", "doloremque", "aperiam", "eaque", "ipsa", "quae", "ab", "illo", "inventore", "veritatis", "et", "quasi", "architecto", "beatae", "vitae", "dicta", "sunt", "explicabo", "aspernatur", "aut", "odit", "aut", "fugit", "sed", "quia", "consequuntur", "magni", "dolores", "eos", "qui", "ratione", "voluptatem", "sequi", "nesciunt", "neque", "dolorem", "ipsum", "quia", "dolor", "sit", "amet", "consectetur", "adipisci", "velit", "sed", "quia", "non", "numquam", "eius", "modi", "tempora", "incidunt", "ut", "labore", "et", "dolore", "magnam", "aliquam", "quaerat", "voluptatem", "ut", "enim", "ad", "minima", "veniam", "quis", "nostrum", "exercitationem", "ullam", "corporis", "nemo", "enim", "ipsam", "voluptatem", "quia", "voluptas", "sit", "suscipit", "laboriosam", "nisi", "ut", "aliquid", "ex", "ea", "commodi", "consequatur", "quis", "autem", "vel", "eum", "iure", "reprehenderit", "qui", "in", "ea", "voluptate", "velit", "esse", "quam", "nihil", "molestiae", "et", "iusto", "odio", "dignissimos", "ducimus", "qui", "blanditiis", "praesentium", "laudantium", "totam", "rem", "voluptatum", "deleniti", "atque", "corrupti", "quos", "dolores", "et", "quas", "molestias", "excepturi", "sint", "occaecati", "cupiditate", "non", "provident", "sed", "ut", "perspiciatis", "unde", "omnis", "iste", "natus", "error", "similique", "sunt", "in", "culpa", "qui", "officia", "deserunt", "mollitia", "animi", "id", "est", "laborum", "et", "dolorum", "fuga", "et", "harum", "quidem", "rerum", "facilis", "est", "et", "expedita", "distinctio", "nam", "libero", "tempore", "cum", "soluta", "nobis", "est", "eligendi", "optio", "cumque", "nihil", "impedit", "quo", "porro", "quisquam", "est", "qui", "minus", "id", "quod", "maxime", "placeat", "facere", "possimus", "omnis", "voluptas", "assumenda", "est", "omnis", "dolor", "repellendus", "temporibus", "autem", "quibusdam", "et", "aut", "consequatur", "vel", "illum", "qui", "dolorem", "eum", "fugiat", "quo", "voluptas", "nulla", "pariatur", "at", "vero", "eos", "et", "accusamus", "officiis", "debitis", "aut", "rerum", "necessitatibus", "saepe", "eveniet", "ut", "et", "voluptates", "repudiandae", "sint", "et", "molestiae", "non", "recusandae", "itaque", "earum", "rerum", "hic", "tenetur", "a", "sapiente", "delectus", "ut", "aut", "reiciendis", "voluptatibus", "maiores", "doloribus", "asperiores", "repellat"]

  @doc """
  Returns a character list of the given length.

  If a range is provided, the length of the list is random in between the
  specified range.

  Defaults to a range between 15 and 255 (inclusive).

  ## Examples

      iex> Faker.Lorem.characters()
      #=> 'ej5Qmc45I7DRT3E6gOfCMbWAIz6AQiExiYl0zxXteF10YMeAsV93Q'

      iex> Faker.Lorem.characters(2)
      #=> '3g'

      iex> Faker.Lorem.characters(%Range{first: 1, last: 10})
      #=> 'lHixS3So'
  """
  @spec characters(integer | Range.t) :: [char]
  def characters(range_or_length \\ %Range{first: 15, last: 255})

  def characters(first..last) do
    characters(Faker.random_between(first, last))
  end

  def characters(num) do
    char = &character/0

    char
    |> Stream.repeatedly()
    |> Enum.take(num)
  end

  @doc """
  Returns a string with a given amount of sentences.

  If a range is provided, the number of sentences is random in between the
  specified range.
  
  Defaults to a range between 2 and 5 (inclusive).

  ## Examples

      iex> Faker.Lorem.paragraph()
      #=> "Delectus ea velit error cupiditate distinctio suscipit voluptatem et cupiditate. Quia consectetur sunt maiores qui suscipit et sed! Id accusamus ut ut qui reprehenderit sed."

      iex> Faker.Lorem.paragraph(1)
      #=> "Nemo labore enim"

      iex> Faker.Lorem.paragraph(%Range{first: 1, last: 2})
      #=> "Nemo labore enim rem qui praesentium totam non et aut. Beatae molestiae et fugit!"
  """
  @spec paragraph(integer | Range.t) :: String.t
  def paragraph(range \\ %Range{first: 2, last: 5})

  def paragraph(first..last) do
    paragraph(Faker.random_between(first, last))
  end

  def paragraph(num) do
    num
    |> sentences()
    |> Enum.join(" ")
  end

  @doc """
  Returns a list with a given amount of paragraphs.

  If a range is provided, the number of paragraphs is random in between the
  specified range.

  Defaults to a range between 2 and 5 (inclusive)

  ## Examples

      iex> Faker.Lorem.paragraphs()
      #=> ["Placeat quos harum voluptatem quaerat quidem eveniet dolores laboriosam aut. Facilis fugiat fuga quo excepturi aut ratione aut sed! Nihil velit quis magni. Illo et et ducimus labore veritatis."]

      iex> Faker.Lorem.paragraphs(1)
      #=> ["Placeat quos harum voluptatem quaerat quidem eveniet dolores laboriosam aut.]

      iex> Faker.Lorem.paragraphs(%Range{first: 1, last: 2})
      #=> ["Placeat quos harum voluptatem quaerat quidem eveniet dolores laboriosam aut. Facilis fugiat fuga quo excepturi aut ratione aut sed! Nihil velit quis magni. Illo et et ducimus labore veritatis."]
  """
  @spec paragraphs(integer | Range.t) :: list(String.t)
  def paragraphs(range \\ %Range{first: 2, last: 5})

  def paragraphs(first..last) do
    paragraphs(Faker.random_between(first, last))
  end

  def paragraphs(num) do
    paragraph = &paragraph/0

    paragraph
    |> Stream.repeatedly()
    |> Enum.take(num)
  end

  @doc """
  Returns a string with a given amount of words.
  
  If a range is provided, the number of words is random in between the
  specified range.

  Defaults to a range between 4 and 10 (inclusive).

  ## Examples

      iex> Faker.Lorem.sentence()
      #=> "Eum et et."

      iex> Faker.Lorem.sentence(1)
      #=> "Eum et et."

      iex> Faker.Lorem.sentence(%Range{first: 1, last: 10})
      #=> "Eum et et."
  """
  @spec sentence(integer | Range.t) :: String.t
  def sentence(range \\ %Range{first: 4, last: 10})

  def sentence(first..last) do
    Faker.random_between(first, last)
    |> sentence(Util.pick([".", ".", ".", "!", "?"]))
  end

  def sentence(num) do
    sentence(num, Util.pick([".", ".", ".", "!", "?"]))
  end

  @doc """
  Returns a string with an amount of words equal to the parameter provided,
  concatenating the specified mark

  ## Examples

      iex> Faker.Lorem.sentence(3, " & ")
      #=> "Cum eos harum & "
  """
  @spec sentence(integer, binary) :: String.t
  def sentence(num, mark) when is_integer(num) and is_binary(mark) do
    tmp =
      num
      |> words()
      |> Enum.join(" ")
      |> String.capitalize()

    tmp <> mark
  end

  @doc """
  Returns a list of strings of the given length, each representing a sentence.
  
  If a range is provided, the length of the list is random in between the
  specified range.
  
  Defaults to a range between 2 and 5 (inclusive).

  ## Examples

      iex> Faker.Lorem.sentences()
      #=> ["Eum et et.", "Id eius esse totam voluptas sapiente totam accusantium?"]

      iex> Faker.Lorem.sentences(2)
      #=> ["Eum et et.", "Id eius esse totam voluptas sapiente totam accusantium?"]

      iex> Faker.Lorem.sentences(%Range{first: 1, last: 2})
      #=> ["Eum et et.", "Id eius esse totam voluptas sapiente totam accusantium?"]
  """
  @spec sentences(integer | Range.t) :: [String.t]
  def sentences(range \\ 2..5)

  def sentences(first..last) do
    sentences(Faker.random_between(first, last))
  end

  def sentences(num) do
    sentence = &sentence/0

    sentence
    |> Stream.repeatedly()
    |> Enum.take(num)
  end

  @doc """
  Returns a list of strings of the given length, each representing a word.
  
  If a range is provided, the length of the list is random in between the
  provided range.

  Defaults to a range between 3 and 6.

  ## Examples

      iex> Faker.Lorem.words()
      #=> ["labore", "totam"]

      iex> Faker.Lorem.words(2)
      #=> ["labore", "totam"]

      iex> Faker.Lorem.words(%Range{first: 1, last: 2}))
      #=> ["labore", "totam"]
  """
  @spec words(integer | Range.t) :: [String.t]
  def words(range \\ %Range{first: 3, last: 6})

  def words(first..last) do
    words(Faker.random_between(first, last))
  end

  def words(num) do
    word = &word/0

    word
    |> Stream.repeatedly()
    |> Enum.take(num)
  end

  defp character do
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
    Enum.at(alphabet, Faker.random_between(0, Enum.count(alphabet) - 1))
  end
end
