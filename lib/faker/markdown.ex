defmodule Faker.Markdown do
  import Faker, only: [random_between: 2, random_uniform: 0]

  alias Faker.Lorem
  alias Faker.Util

  @moduledoc ~S"""
  Functions for generating random markdown
  """

  @headers ["#", "##", "###", "####", "#####", "######"]
  @emphasis ["_", "~", "*", "**"]
  @langs ["elixir", "erlang", "ruby", "go", "shell"]

  @doc ~S"""
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
      iex> Faker.Markdown.headers()
      "# Et"
  """
  @spec headers() :: String.t()
  def headers do
    header = Lorem.word() |> String.capitalize()
    "#{Util.pick(@headers)} #{header}"
  end

  @doc ~S"""
  Returns a random sentence with random emphasis word

  ## Examples

      iex> Faker.Markdown.emphasis()
      "Deleniti consequatur et qui vitae et. Sit _aut_ expedita cumque est necessitatibus beatae ex sunt!"
      iex> Faker.Markdown.emphasis()
      "Vitae animi *et* id et vitae! Quisquam corporis quisquam ab harum!"
      iex> Faker.Markdown.emphasis()
      "Ut aut inventore eius! Aut doloribus qui officia vel quaerat. Et perspiciatis rerum nam repellendus inventore nihil _dicta_ ipsum."
      iex> Faker.Markdown.emphasis()
      "Quisquam sed odio accusamus et vel error non impedit tempora. _Qui_ fugit cupiditate fuga ab consectetur harum earum! Nobis provident quisquam modi accusantium eligendi numquam!"
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

  @doc ~S"""
  Returns a random ordered list

  ## Examples

      iex> Faker.Markdown.ordered_list()
      "1. Deleniti consequatur et qui vitae et."
      iex> Faker.Markdown.ordered_list()
      "1. Aut expedita cumque est necessitatibus beatae ex sunt!"
      iex> Faker.Markdown.ordered_list()
      "1. Asperiores qui vitae animi et id et vitae vitae.\n2. Corporis quisquam ab harum ipsa sed veritatis.\n3. Ut aut inventore eius!\n4. Aut doloribus qui officia vel quaerat.\n5. Et perspiciatis rerum nam repellendus inventore nihil dicta ipsum.\n6. Qui voluptates magni quisquam sed odio accusamus et.\n7. Non impedit tempora minus voluptatem qui fugit?\n8. Ab consectetur harum earum possimus."
      iex> Faker.Markdown.ordered_list()
      "1. Quisquam modi accusantium eligendi numquam.\n2. Quod blanditiis est non id quibusdam qui omnis alias!\n3. Dicta dolores at ut delectus magni atque eos beatae nulla.\n4. Laudantium qui dolorem pariatur voluptatibus sed et enim?"
  """
  @spec ordered_list() :: String.t()
  def ordered_list do
    list()
  end

  @doc ~S"""
  Returns a random unordered list

  ## Examples

      iex> Faker.Markdown.unordered_list()
      "* Deleniti consequatur et qui vitae et."
      iex> Faker.Markdown.unordered_list()
      "* Aut expedita cumque est necessitatibus beatae ex sunt!"
      iex> Faker.Markdown.unordered_list()
      "* Asperiores qui vitae animi et id et vitae vitae.\n* Corporis quisquam ab harum ipsa sed veritatis.\n* Ut aut inventore eius!\n* Aut doloribus qui officia vel quaerat.\n* Et perspiciatis rerum nam repellendus inventore nihil dicta ipsum.\n* Qui voluptates magni quisquam sed odio accusamus et.\n* Non impedit tempora minus voluptatem qui fugit?\n* Ab consectetur harum earum possimus."
      iex> Faker.Markdown.unordered_list()
      "* Quisquam modi accusantium eligendi numquam.\n* Quod blanditiis est non id quibusdam qui omnis alias!\n* Dicta dolores at ut delectus magni atque eos beatae nulla.\n* Laudantium qui dolorem pariatur voluptatibus sed et enim?"
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

  @doc ~S"""
  Returns random inline code

  ## Examples

      iex> Faker.Markdown.inline_code()
      "`Sint deleniti consequatur et qui vitae et quibusdam et sit.`"
      iex> Faker.Markdown.inline_code()
      "`Cumque est necessitatibus beatae ex sunt soluta?`"
      iex> Faker.Markdown.inline_code()
      "`Asperiores qui vitae animi et id et vitae vitae.`"
      iex> Faker.Markdown.inline_code()
      "`Corporis quisquam ab harum ipsa sed veritatis.`"
  """
  @spec inline_code() :: String.t()
  def inline_code do
    "`#{Lorem.sentence()}`"
  end

  @doc ~S"""
  Returns random inline code

  ## Examples

      iex> Faker.Markdown.block_code()
      "```elixir\nDeleniti consequatur et qui vitae et.\n```"
      iex> Faker.Markdown.block_code()
      "```elixir\nAut expedita cumque est necessitatibus beatae ex sunt!\n```"
      iex> Faker.Markdown.block_code()
      "```ruby\nAsperiores qui vitae animi et id et vitae vitae.\n```"
      iex> Faker.Markdown.block_code()
      "```go\nQuisquam ab harum ipsa sed veritatis numquam.\n```"
  """
  @spec block_code() :: String.t()
  def block_code do
    """
    ```#{Util.pick(@langs)}
    #{Lorem.sentence()}
    ```\
    """
  end

  @doc ~S"""
  Returns random markdown table

  ## Examples

      iex> Faker.Markdown.table()
      "sint | deleniti | consequatur\n---- | ---- | ----\net | qui | vitae\net | quibusdam | et\nsit | aut | expedita\ncumque | est | necessitatibus\nbeatae | ex | sunt"
      iex> Faker.Markdown.table()
      "soluta | asperiores\n---- | ----\nqui | vitae\nanimi | et\nid | et\nvitae | vitae\nut | quisquam\ncorporis | quisquam"
      iex> Faker.Markdown.table()
      "ipsa | sed | veritatis | numquam | maxime\n---- | ---- | ---- | ---- | ----\nut | aut | inventore | eius | rerum\nbeatae | aut | doloribus | qui | officia\nvel | quaerat | expedita | ut | et\nperspiciatis | rerum | nam | repellendus | inventore"
      iex> Faker.Markdown.table()
      "ipsum | sequi | ducimus | qui | voluptates\n---- | ---- | ---- | ---- | ----\nmagni | quisquam | sed | odio | accusamus\net | vel | error | non | impedit\ntempora | minus | voluptatem | qui | fugit"
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
      Enum.map_join(1..n_cols, separator, fn _ -> Lorem.word() end)
    end)
    |> List.insert_at(1, header)
    |> Enum.join("\n")
  end

  @doc ~S"""
  Returns random markdown

  ## Examples

      iex> Faker.Markdown.markdown()
      "## Aut\n\n```ruby\nBeatae ex sunt soluta possimus soluta asperiores qui vitae animi.\n```\n\n`Et vitae vitae ut quisquam corporis quisquam ab harum ipsa.`\n\n* Maxime ut aut inventore eius rerum beatae?\n* Qui officia vel quaerat expedita.\n* Perspiciatis rerum nam repellendus inventore nihil.\n* Sequi ducimus qui voluptates magni quisquam sed odio.\n* Vel error non impedit tempora minus.\n\nfugit | cupiditate | fuga | ab\n---- | ---- | ---- | ----\nconsectetur | harum | earum | possimus\ntotam | nobis | provident | quisquam\nmodi | accusantium | eligendi | numquam"
      iex> Faker.Markdown.markdown()
      "Odit dicta dolores at ut delectus magni atque eos? Labore voluptate laudantium ~qui.~ Voluptatibus sed et enim ullam?\n\n1. Repellat et praesentium quia sed nemo minus ea!\n2. Cumque nihil similique repudiandae corrupti!\n3. Similique accusamus suscipit perspiciatis cum.\n4. Dolore et ut earum possimus eos reprehenderit cupiditate omnis et.\n5. Sit delectus possimus quo et est culpa eum ex?\n6. Aut aut aut quisquam?\n7. Tenetur alias est provident esse dicta ea illo consequatur maiores?"
      iex> Faker.Markdown.markdown()
      "* Porro est id maxime dolorum animi.\n* Deserunt ipsa consequuntur eveniet asperiores.\n* Quia numquam voluptas vitae repellat tempore.\n* Harum voluptas harum modi omnis quam dolor a aliquam officiis?\n* Neque voluptas consequatur sed cupiditate dolorum pariatur et.\n* Aut voluptatem natus amet eius eos non dolorum.\n* Pariatur ex illo aliquam rerum ab voluptatem exercitationem nobis enim.\n* Eos corporis unde ex enim dolore ut consequuntur.\n* Dicta eius totam nobis est a eveniet ab magni.\n* Consequatur unde dolorem et nihil laudantium ea veniam necessitatibus."
      iex> Faker.Markdown.markdown()
      "1. Repellat qui repudiandae quia cumque excepturi laudantium accusantium!\n2. Sunt non consequatur molestiae laboriosam sit aperiam.\n3. Voluptatem est beatae delectus minus qui molestiae dolorem aut.\n4. Iure enim sapiente quia voluptas esse!\n\n```go\nVoluptas ullam ratione et esse optio qui ut sed dignissimos!\n```\n\nsaepe | a | illo\n---- | ---- | ----\nut | eos | aliquid\nquisquam | omnis | magni\nconsequuntur | molestiae | expedita\n\n* Ducimus est nulla repellat reiciendis est est veritatis.\n* Quaerat assumenda ut reiciendis eaque in!\n* Aliquam quis sapiente facere?\n* Nihil suscipit pariatur qui."
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
    |> Enum.sort_by(fn _ -> random_uniform() end)
    |> Stream.map(fn fun ->
      apply(__MODULE__, fun, [])
    end)
    |> Enum.join("\n\n")
  end
end
