defmodule Faker.Person.Da do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for name data in Danish
  """

  @doc """
  Returns a complete name. Does not include a prefix or suffix.

  ## Examples

      iex> Faker.Person.Da.name()
      "Jonathan Jacobsen"
      iex> Faker.Person.Da.name()
      "Victor Knudsen"
      iex> Faker.Person.Da.name()
      "Naja Henriksen"
      iex> Faker.Person.Da.name()
      "Josefine Poulsen"
  """
  @spec name() :: String.t()
  def name, do: "#{first_name()} #{last_name()}"

  @doc """
  Returns a random first name

  ## Examples

      iex> Faker.Person.Da.first_name()
      "Jonathan"
      iex> Faker.Person.Da.first_name()
      "Liam"
      iex> Faker.Person.Da.first_name()
      "Victor"
      iex> Faker.Person.Da.first_name()
      "Freja"
  """
  @spec first_name() :: String.t()
  sampler(:first_name, [
    "Alexander",
    "Anna",
    "Andreas",
    "Anne",
    "Anton",
    "Benjamin",
    "Caroline",
    "Christian",
    "Christopher",
    "Clara",
    "Daniel",
    "David",
    "Emil",
    "Emma",
    "Frederik",
    "Freja",
    "Gustav",
    "Hannah",
    "Isabella",
    "Jacob",
    "Jonathan",
    "Josefine",
    "Julie",
    "Karl",
    "Katrine",
    "Laura",
    "Lars",
    "Liam",
    "Line",
    "Louise",
    "Lucas",
    "Maja",
    "Malthe",
    "Marcus",
    "Maria",
    "Marie",
    "Mathias",
    "Mathilde",
    "Michael",
    "Mikkel",
    "Mille",
    "Naja",
    "Nicklas",
    "Nicoline",
    "Noah",
    "Oliver",
    "Olivia",
    "Oscar",
    "Philip",
    "Rasmus",
    "Sebastian",
    "Silje",
    "Sofie",
    "Storm",
    "Theodor",
    "Thomas",
    "Tobias",
    "Victor",
    "Victoria",
    "Villads",
    "William"
  ])

  @doc """
  Returns a random last name

  ## Examples

      iex> Faker.Person.Da.last_name()
      "Thomsen"
      iex> Faker.Person.Da.last_name()
      "Jacobsen"
      iex> Faker.Person.Da.last_name()
      "Mikkelsen"
      iex> Faker.Person.Da.last_name()
      "Knudsen"
  """
  @spec last_name() :: String.t()
  sampler(:last_name, [
    "Andersen",
    "Antonsen",
    "Berg",
    "Bertelsen",
    "Bruun",
    "Christensen",
    "Clausen",
    "Dahl",
    "Eriksen",
    "Frandsen",
    "Hansen",
    "Henriksen",
    "Holm",
    "Jacobsen",
    "Jensen",
    "Jeppesen",
    "Jespersen",
    "Johannesen",
    "Johansen",
    "Jørgensen",
    "Karlsen",
    "Knudsen",
    "Kristensen",
    "Larsen",
    "Lund",
    "Madsen",
    "Mikkelsen",
    "Møller",
    "Nielsen",
    "Olsen",
    "Pedersen",
    "Petersen",
    "Poulsen",
    "Rasmussen",
    "Schmidt",
    "Sørensen",
    "Thomsen"
  ])

  @doc """
  Returns a random name related title

  ## Examples

      iex> Faker.Person.Da.title()
      "Konsulent"
      iex> Faker.Person.Da.title()
      "Manager"
      iex> Faker.Person.Da.title()
      "Projektleder"
      iex> Faker.Person.Da.title()
      "Leder"
  """
  @spec title() :: String.t()
  sampler(:title, [
    "Afdelingsleder",
    "Analytiker",
    "Arkitekt",
    "Assistent",
    "Chef",
    "Direktør",
    "Konsulent",
    "Koordinator",
    "Leder",
    "Manager",
    "Medarbejder",
    "Projektleder",
    "Rådgiver",
    "Specialist",
    "Supervisor",
    "Udvikler"
  ])

  @doc """
  Returns a random name related prefix

  ## Examples

      iex> Faker.Person.Da.prefix()
      "Frk."
      iex> Faker.Person.Da.prefix()
      "Fru"
      iex> Faker.Person.Da.prefix()
      "Dr."
      iex> Faker.Person.Da.prefix()
      "Hr."
  """
  @spec prefix() :: String.t()
  sampler(:prefix, [
    "Hr.",
    "Fru",
    "Frk.",
    "Dr."
  ])
end
