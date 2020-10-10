defmodule Faker.Markdown do
  import Faker, only: [random_between: 2]

  alias Faker.Lorem
  alias Faker.Util

  @moduledoc """
  Functions for generating random markdown
  """

  @headers ["#", "##", "###", "####", "#####", "######"]
  @emphasis ["_", "~", "*", "**"]
  @langs ["elixir", "erlang", "ruby", "go", "shell"]

  @doc """
  Returns a random markdown header

  ## Examples

      iex> Faker.Markdown.headers()
      "###### Aliquam"
      iex> Faker.Markdown.headers()
      "### Sint"
      iex> Faker.Markdown.headers()
      "# Consequatur"
      iex> Faker.Markdown.headers()
      "### Qui"
  """
  @spec headers() :: String.t()
  def headers do
    header = Lorem.word() |> String.capitalize()
    "#{Util.pick(@headers)} #{header}"
  end

  @doc """
  Returns a random sentence with random emphasis word

  ## Examples

      iex> Faker.Markdown.emphasis()
      "Deleniti consequatur et qui vitae et. Sit _aut_ expedita cumque est necessitatibus beatae ex sunt!"
      iex> Faker.Markdown.emphasis()
      "Vitae animi *et* id et vitae! Quisquam corporis quisquam ab harum!"
      iex> Faker.Markdown.emphasis()
      "Ut aut inventore eius! Aut doloribus qui officia vel quaerat. Et perspiciatis rerum nam repellendus inventore nihil _dicta_ ipsum."
  """
  @spec emphasis() :: String.t()
  def emphasis do
    paragraph = Lorem.paragraph(2..3)
    words = String.split(paragraph, " ")
    position = random_between(0, Enum.count(words) - 1)
    formatting = Util.pick(@emphasis)

    words
    |> List.update_at(position, &"#{formatting}#{&1}#{formatting}")
    |> Enum.join(" ")
  end

  @doc """
  Returns a random ordered list

  ## Examples

      iex> Faker.Markdown.ordered_list()
      "1. Deleniti consequatur et qui vitae et."
  """
  @spec ordered_list() :: String.t()
  def ordered_list do
    list()
  end

  @doc """
  Returns a random unordered list

  ## Examples

      iex> Faker.Markdown.unordered_list()
      "* Deleniti consequatur et qui vitae et."
  """
  @spec unordered_list() :: String.t()
  def unordered_list do
    list("*")
  end

  @spec list(nil | String.t()) :: String.t()
  defp list(marker \\ nil) do
    number = random_between(1, 10)

    1..number
    |> Stream.map(fn num ->
      marker = if is_nil(marker), do: "#{num}.", else: marker
      "#{marker} #{Lorem.sentence()}"
    end)
    |> Enum.join("\n")
  end

  @doc """
  Returns random inline code

  ## Examples

      iex> Faker.Markdown.inline_code()
      "`Sint deleniti consequatur et qui vitae et quibusdam et sit.`"
  """
  @spec inline_code() :: String.t()
  def inline_code do
    "`#{Lorem.sentence()}`"
  end

  @doc """
  Returns random inline code

  ## Examples

      iex> Faker.Markdown.block_code()
      "```elixir\\nDeleniti consequatur et qui vitae et.\\n```"
  """
  @spec block_code() :: String.t()
  def block_code do
    """
    ```#{Util.pick(@langs)}
    #{Lorem.sentence()}
    ```\
    """
  end

  @doc """
  Returns random markdown table

  ## Examples

      iex> Faker.Markdown.table()
      "sint | deleniti | consequatur\\n---- | ---- | ----\\net | qui | vitae\\net | quibusdam | et\\nsit | aut | expedita\\ncumque | est | necessitatibus\\nbeatae | ex | sunt"
  """
  @spec table() :: String.t()
  def table do
    separator = " | "
    m_rows = random_between(2, 5) + 1
    n_cols = random_between(2, 5)

    header =
      "----"
      |> List.duplicate(n_cols)
      |> Enum.join(separator)

    0..m_rows
    |> Enum.map(fn _ ->
      1..n_cols
      |> Enum.map(fn _ -> Lorem.word() end)
      |> Enum.join(separator)
    end)
    |> List.insert_at(1, header)
    |> Enum.join("\n")
  end

  @doc """
  Returns random markdown

  ## Examples

      iex> Faker.Markdown.markdown()
      "cumque | est | necessitatibus\\n---- | ---- | ----\\nbeatae | ex | sunt\\nsoluta | possimus | soluta\\nasperiores | qui | vitae\\n\\n* Et vitae vitae ut quisquam corporis quisquam ab harum ipsa.\\n* Numquam maxime ut aut inventore eius rerum beatae.\\n* Qui officia vel quaerat expedita.\\n* Perspiciatis rerum nam repellendus inventore nihil.\\n\\n`Sequi ducimus qui voluptates magni quisquam sed odio.`\\n\\n```elixir\\nError non impedit tempora minus voluptatem qui fugit.\\n```\\n\\n### Cupiditate"
  """
  @spec markdown() :: String.t()
  def markdown do
    [
      :headers,
      :emphasis,
      :ordered_list,
      :unordered_list,
      :inline_code,
      :block_code,
      :table
    ]
    |> Enum.filter(fn _ ->
      Util.pick([true, false])
    end)
    |> Enum.shuffle()
    |> Stream.map(fn fun ->
      apply(__MODULE__, fun, [])
    end)
    |> Enum.join("\n\n")
  end
end
