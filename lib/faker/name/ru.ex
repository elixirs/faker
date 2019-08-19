defmodule Faker.Name.Ru do
  @moduledoc """
  Functions for name data in Russian
  """

  @type gender() :: String.t()

  @doc """
  Returns a complete name (may include a prefix) for provided or random gender

  ## Examples

      iex> Faker.Name.Ru.name("male")
      "Д-р. Глеб Никонов"
      iex> Faker.Name.Ru.name("male")
      "Константин Корнеев"
      iex> Faker.Name.Ru.name("male")
      "Демьян Ефимов"

      iex> Faker.Name.Ru.name("female")
      "Д-р. Нина Куликовская"
      iex> Faker.Name.Ru.name("female")
      "Надежда Шевченко"
      iex> Faker.Name.Ru.name("female")
      "София Федорова"
  """
  @spec name(gender()) :: String.t()
  def name(), do: name(Faker.Gender.name())
  def name("male"), do: Faker.Name.Ru.Male.name()
  def name("female"), do: Faker.Name.Ru.Female.name()


  @doc """
  Returns random first name for provided or random gender

  ## Examples

      iex> Faker.Name.Ru.first_name("male")
      "Давид"
      iex> Faker.Name.Ru.first_name("male")
      "Иван"
      iex> Faker.Name.Ru.first_name("male")
      "Глеб"
      iex> Faker.Name.Ru.first_name("male")
      "Степан"

      iex> Faker.Name.Ru.first_name("female")
      "София"
      iex> Faker.Name.Ru.first_name("female")
      "Елена"
      iex> Faker.Name.Ru.first_name("female")
      "Нина"
  """
  @spec first_name(gender()) :: String.t()
  def first_name(), do: first_name(Faker.Gender.name())
  def first_name("male"), do: Faker.Name.Ru.Male.first_name()
  def first_name("female"), do: Faker.Name.Ru.Female.first_name()

  @doc """
  Returns random last name for provided or random gender

  ## Examples

      iex> Faker.Name.Ru.last_name("male")
      "Кукушкин"
      iex> Faker.Name.Ru.last_name("male")
      "Трофимов"
      iex> Faker.Name.Ru.last_name("male")
      "Баженов"
      iex> Faker.Name.Ru.last_name("male")
      "Никонов"

      iex> Faker.Name.Ru.last_name("female")
      "Галицына"
      iex> Faker.Name.Ru.last_name("female")
      "Стацевич"
      iex> Faker.Name.Ru.last_name("female")
      "Сафарова"
  """
  @spec first_name(gender()) :: String.t()
  def last_name(), do: last_name(Faker.Gender.name())
  def last_name("male"), do: Faker.Name.Ru.Male.last_name()
  def last_name("female"), do: Faker.Name.Ru.Female.last_name()

  @doc """
  Returns random prefix for provided or random gender

  ## Examples

      iex> Faker.Name.Ru.prefix("male")
      "Г-н."
      iex> Faker.Name.Ru.prefix("male")
      "Д-р."

      iex> Faker.Name.Ru.prefix("female")
      "Г-жа."
      iex> Faker.Name.Ru.prefix("female")
      "Д-р."
  """
  @spec prefix(gender()) :: String.t()
  def prefix(), do: prefix(Faker.Gender.name())
  def prefix("male"), do: Faker.Name.Ru.Male.prefix()
  def prefix("female"), do: Faker.Name.Ru.Female.prefix()
end