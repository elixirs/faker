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
      "aliquam"
      iex> Faker.Lorem.word()
      "ut"
      iex> Faker.Lorem.word()
      "sint"
      iex> Faker.Lorem.word()
      "deleniti"
  """
  @spec word() :: String.t()
  sampler(:word, [
    "alias",
    "consequatur",
    "aut",
    "perferendis",
    "sit",
    "voluptatem",
    "accusantium",
    "doloremque",
    "aperiam",
    "eaque",
    "ipsa",
    "quae",
    "ab",
    "illo",
    "inventore",
    "veritatis",
    "et",
    "quasi",
    "architecto",
    "beatae",
    "vitae",
    "dicta",
    "sunt",
    "explicabo",
    "aspernatur",
    "aut",
    "odit",
    "aut",
    "fugit",
    "sed",
    "quia",
    "consequuntur",
    "magni",
    "dolores",
    "eos",
    "qui",
    "ratione",
    "voluptatem",
    "sequi",
    "nesciunt",
    "neque",
    "dolorem",
    "ipsum",
    "quia",
    "dolor",
    "sit",
    "amet",
    "consectetur",
    "adipisci",
    "velit",
    "sed",
    "quia",
    "non",
    "numquam",
    "eius",
    "modi",
    "tempora",
    "incidunt",
    "ut",
    "labore",
    "et",
    "dolore",
    "magnam",
    "aliquam",
    "quaerat",
    "voluptatem",
    "ut",
    "enim",
    "ad",
    "minima",
    "veniam",
    "quis",
    "nostrum",
    "exercitationem",
    "ullam",
    "corporis",
    "nemo",
    "enim",
    "ipsam",
    "voluptatem",
    "quia",
    "voluptas",
    "sit",
    "suscipit",
    "laboriosam",
    "nisi",
    "ut",
    "aliquid",
    "ex",
    "ea",
    "commodi",
    "consequatur",
    "quis",
    "autem",
    "vel",
    "eum",
    "iure",
    "reprehenderit",
    "qui",
    "in",
    "ea",
    "voluptate",
    "velit",
    "esse",
    "quam",
    "nihil",
    "molestiae",
    "et",
    "iusto",
    "odio",
    "dignissimos",
    "ducimus",
    "qui",
    "blanditiis",
    "praesentium",
    "laudantium",
    "totam",
    "rem",
    "voluptatum",
    "deleniti",
    "atque",
    "corrupti",
    "quos",
    "dolores",
    "et",
    "quas",
    "molestias",
    "excepturi",
    "sint",
    "occaecati",
    "cupiditate",
    "non",
    "provident",
    "sed",
    "ut",
    "perspiciatis",
    "unde",
    "omnis",
    "iste",
    "natus",
    "error",
    "similique",
    "sunt",
    "in",
    "culpa",
    "qui",
    "officia",
    "deserunt",
    "mollitia",
    "animi",
    "id",
    "est",
    "laborum",
    "et",
    "dolorum",
    "fuga",
    "et",
    "harum",
    "quidem",
    "rerum",
    "facilis",
    "est",
    "et",
    "expedita",
    "distinctio",
    "nam",
    "libero",
    "tempore",
    "cum",
    "soluta",
    "nobis",
    "est",
    "eligendi",
    "optio",
    "cumque",
    "nihil",
    "impedit",
    "quo",
    "porro",
    "quisquam",
    "est",
    "qui",
    "minus",
    "id",
    "quod",
    "maxime",
    "placeat",
    "facere",
    "possimus",
    "omnis",
    "voluptas",
    "assumenda",
    "est",
    "omnis",
    "dolor",
    "repellendus",
    "temporibus",
    "autem",
    "quibusdam",
    "et",
    "aut",
    "consequatur",
    "vel",
    "illum",
    "qui",
    "dolorem",
    "eum",
    "fugiat",
    "quo",
    "voluptas",
    "nulla",
    "pariatur",
    "at",
    "vero",
    "eos",
    "et",
    "accusamus",
    "officiis",
    "debitis",
    "aut",
    "rerum",
    "necessitatibus",
    "saepe",
    "eveniet",
    "ut",
    "et",
    "voluptates",
    "repudiandae",
    "sint",
    "et",
    "molestiae",
    "non",
    "recusandae",
    "itaque",
    "earum",
    "rerum",
    "hic",
    "tenetur",
    "a",
    "sapiente",
    "delectus",
    "ut",
    "aut",
    "reiciendis",
    "voluptatibus",
    "maiores",
    "doloribus",
    "asperiores",
    "repellat"
  ])

  @doc """
  Returns a character list of the given length.

  If a range is provided, the length of the list is random in between the
  specified range.

  Defaults to a range between 15 and 255 (inclusive).

  ## Examples

      iex> Faker.Lorem.characters()
      ~c'ppkQqaIfGqxsjFoNITNnu6eXyJicLJNth88PrhGDhwp4LNQMt5pCFh7XGEZUiBOjqwcnSUTH94vu8a9XKUwNAs48lHzPITbFXSfTS0pHfBSmHkbj9kOsd7qRuGeXKTgCgI1idI3uwENwTqc'

      iex> Faker.Lorem.characters(3..5)
      ~c'ppk'

      iex> Faker.Lorem.characters(2)
      ~c'Ap'

      iex> Faker.Lorem.characters(7)
      ~c'AppkQqa'
  """
  @spec characters(integer | Range.t()) :: [char]
  def characters(range_or_length \\ 15..255)

  def characters(num) when is_integer(num) do
    char = &character/0

    char
    |> Stream.repeatedly()
    |> Enum.take(num)
  end

  def characters(range) do
    range
    |> Util.pick()
    |> characters()
  end

  @doc """
  Returns a string with a given amount of sentences.

  If a range is provided, the number of sentences is random in between the
  specified range.

  Defaults to a range between 2 and 5 (inclusive).

  ## Examples

      iex> Faker.Lorem.paragraph()
      "Deleniti consequatur et qui vitae et. Sit aut expedita cumque est necessitatibus beatae ex sunt! Soluta asperiores qui vitae animi et id et vitae. Quisquam corporis quisquam ab harum!"

      iex> Faker.Lorem.paragraph(1..2)
      "Deleniti consequatur et qui vitae et."

      iex> Faker.Lorem.paragraph(1)
      "Adipisci ipsa sit officiis ducimus tempora et."

      iex> Faker.Lorem.paragraph(2)
      "Adipisci ipsa sit officiis ducimus tempora et. Et vero enim et hic quidem!"
  """
  @spec paragraph(integer | Range.t()) :: String.t()
  def paragraph(range \\ 2..5)

  def paragraph(num) when is_integer(num) do
    Enum.join(sentences(num), " ")
  end

  def paragraph(range) do
    range
    |> Util.pick()
    |> paragraph()
  end

  @doc """
  Returns a list with a given amount of paragraphs.

  If a range is provided, the number of paragraphs is random in between the
  specified range.

  Defaults to a range between 2 and 5 (inclusive)

  ## Examples

      iex> Faker.Lorem.paragraphs()
      ["Neque aut ullam voluptas esse adipisci? Sunt mollitia voluptatibus labore qui sint id eum? Quod quam odio aut recusandae consequatur in ea. Aspernatur mollitia repellat eligendi temporibus aliquam accusamus inventore? Aut quo ut incidunt quis tenetur laboriosam eos.", "Ea nam eos voluptate maxime minus. Quia aperiam debitis maiores expedita fugit quibusdam odio saepe. Et et quasi reprehenderit.", "Ipsa soluta repellat ut neque illum dolor. Voluptas sint numquam occaecati. Quidem architecto quisquam quia ad possimus reprehenderit. Debitis reiciendis numquam aut eos dolores porro!", "Tempore quas eveniet nostrum explicabo aliquam sit ut iste ipsum! Perferendis consequatur velit natus distinctio! Qui et esse modi architecto quaerat tempora suscipit explicabo facere.", "Iste aut ipsum dolor qui fugit illo. Eius consequatur nulla natus molestias tempore quidem dolor autem. Id aspernatur vel quia sit consequuntur."]
      iex> Faker.Lorem.paragraphs(2..3)
      ["Qui explicabo optio ut amet doloremque? Et tenetur voluptatem ullam cupiditate aliquam optio unde et.", "Accusantium cumque consequatur aliquid rerum ut dicta explicabo. Itaque illum autem distinctio dolor. Voluptate asperiores amet adipisci quis qui soluta similique. Soluta eum fugiat voluptas quo voluptates?", "Quas velit numquam ducimus quam quidem ut cupiditate placeat. Earum corporis voluptate nisi veritatis vel cum eaque? Eaque inventore ut ut reiciendis? Culpa numquam veritatis qui reiciendis alias repudiandae debitis et? Voluptatem quis reprehenderit aperiam fugit."]
      iex> Faker.Lorem.paragraphs(1)
      ["Eos et necessitatibus et rerum sit voluptatem quae! Totam a in voluptas ducimus consequuntur. Consequatur neque dolore sunt provident a tenetur id corrupti. Atque rerum illum ut et. Dolorum quia sunt atque quo corporis."]
      iex> Faker.Lorem.paragraphs(2)
      [
        "Facilis natus sint sapiente? Omnis porro quas totam dolore. Nihil ut sed ut voluptas dolor sint vel eaque quibusdam!",
        "Dolorem nemo et sed et. Praesentium debitis voluptatum aspernatur cum voluptatem optio? Voluptatibus sint eaque quia suscipit voluptas in? Ullam ex qui libero eum rerum quae maxime aut!"
      ]
  """
  @spec paragraphs(integer | Range.t()) :: list(String.t())
  def paragraphs(range \\ 2..5)

  def paragraphs(num) when is_integer(num) do
    paragraph = &paragraph/0

    paragraph
    |> Stream.repeatedly()
    |> Enum.take(num)
  end

  def paragraphs(range) do
    range
    |> Util.pick()
    |> paragraphs()
  end

  @doc """
  Returns a string with a given amount of words.

  If a range is provided, the number of words is random in between the
  specified range.

  Defaults to a range between 4 and 10 (inclusive).

  ## Examples

      iex> Faker.Lorem.sentence()
      "Adipisci ipsa sit officiis ducimus tempora et."
      iex> Faker.Lorem.sentence(2..3)
      "Est debitis nostrum."
  """
  @spec sentence(integer | Range.t()) :: String.t()
  def sentence(range \\ 4..10)

  def sentence(num) when is_integer(num) do
    sentence(num, Util.pick([".", ".", ".", "!", "?"]))
  end

  def sentence(range) do
    range
    |> Util.pick()
    |> sentence()
  end

  @doc """
  Returns a string with an amount of words equal to the parameter provided,
  concatenating the specified mark

  ## Examples

      iex> Faker.Lorem.sentence(7, "...")
      "Aliquam ut sint deleniti consequatur et qui..."
  """
  @spec sentence(integer, binary) :: String.t()
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
      ["Dolor accusantium ipsam vero et non quidem.", "Laborum repellat aliquam animi recusandae dolorum in aut atque quas.", "Qui hic eum deserunt quam neque distinctio officiis veritatis?", "Aut enim rerum architecto quia ut velit.", "Dolore iure ut ex debitis odio?"]
      iex> Faker.Lorem.sentences(3..4)
      ["Est neque et assumenda possimus qui odit?", "Ut consequatur aut eos qui laudantium sint quas officiis qui.", "Esse magni assumenda temporibus dicta magnam et accusamus reiciendis et."]
      iex> Faker.Lorem.sentences(4)
      [
        "Corporis est est non vero nisi velit saepe.",
        "Deleniti dolor perferendis aliquid dolore repellat harum at officiis?",
        "Expedita nostrum dignissimos dolore voluptate atque et impedit quia.",
        "Dolorem nesciunt aliquid quo aut id cumque et."
      ]
      iex> Faker.Lorem.sentences(3)
      ["Autem tempora velit vel corrupti?", "Velit vero est modi laboriosam ut.", "Voluptatem ut quia iure reiciendis nihil perferendis cum?"]
  """
  @spec sentences(integer | Range.t()) :: [String.t()]
  def sentences(range \\ 2..5)

  def sentences(num) when is_integer(num) do
    sentence = &sentence/0

    sentence
    |> Stream.repeatedly()
    |> Enum.take(num)
  end

  def sentences(range) do
    range
    |> Util.pick()
    |> sentences()
  end

  @doc """
  Returns a list of strings of the given length, each representing a word.

  If a range is provided, the length of the list is random in between the
  provided range.

  Defaults to a range between 3 and 6.

  ## Examples

      iex> Faker.Lorem.words()
      ["ut", "sint", "deleniti", "consequatur", "et"]
      iex> Faker.Lorem.words(1..2)
      ["vitae"]
      iex> Faker.Lorem.words(2)
      ["cumque", "non"]
      iex> Faker.Lorem.words(6)
      ["nisi", "doloremque", "debitis", "voluptatem", "corrupti", "saepe"]
  """
  @spec words(integer | Range.t()) :: [String.t()]
  def words(range \\ 3..6)

  def words(num) when is_integer(num) do
    word = &word/0

    word
    |> Stream.repeatedly()
    |> Enum.take(num)
  end

  def words(range) do
    range
    |> Util.pick()
    |> words()
  end

  defp character do
    alphabet = ~c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    Enum.at(alphabet, Faker.random_between(0, Enum.count(alphabet) - 1))
  end
end
