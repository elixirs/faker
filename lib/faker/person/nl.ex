defmodule Faker.Person.Nl do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for name data in Dutch
  """

  @doc """
  Returns a complete name (may include a suffix/prefix or both)

  ## Examples
      iex> Faker.Person.Nl.name()
      "Floortje van Vos"
      iex> Faker.Person.Nl.name()
      "Beatrix van de Klein"
      iex> Faker.Person.Nl.name()
      "Sijmen Hoek"
      iex> Faker.Person.Nl.name()
      "Theo Brouwer"
  """
  @spec name() :: String.t()
  def name, do: name(Faker.random_between(0, 15))
  defp name(0), do: "#{prefix()} #{first_name()} #{tussenvoegsel()} #{last_name()} #{suffix()}"
  defp name(1), do: "#{prefix()} #{first_name()} #{last_name()} #{suffix()}"
  defp name(2), do: "#{first_name()} #{tussenvoegsel()} #{last_name()} #{suffix()}"
  defp name(3), do: "#{first_name()} #{last_name()} #{suffix()}"

  defp name(n) when is_integer(n) and n < 9,
    do: "#{first_name()} #{tussenvoegsel()} #{last_name()}"

  defp name(n) when is_integer(n) do
    "#{first_name()} #{last_name()}"
  end

  @doc """
  Returns a random first name

  ## Examples

      iex> Faker.Person.Nl.first_name()
      "Adriaan"
      iex> Faker.Person.Nl.first_name()
      "Floortje"
      iex> Faker.Person.Nl.first_name()
      "Bas"
      iex> Faker.Person.Nl.first_name()
      "Sietske"
  """
  @spec first_name() :: String.t()
  sampler(:first_name, [
    "Adriaan",
    "Amber",
    "Anna",
    "Anne",
    "Anneke",
    "Annefleur",
    "Annelies",
    "Annemiek",
    "Anouk",
    "Arnoud",
    "Bas",
    "Beatrix",
    "Benjamin",
    "Benthe",
    "Boudewijn",
    "Bram",
    "Britt",
    "Carlijn",
    "Carolien",
    "Chantal",
    "Charlotte",
    "Christine",
    "Claire",
    "Cor",
    "Cornelia",
    "Cornelis",
    "Daan",
    "Daniël",
    "David",
    "Diederik",
    "Dick",
    "Dirk",
    "Doutzen",
    "Egbert-Jan",
    "Emma",
    "Esmee",
    "Eva",
    "Femke",
    "Finn",
    "Fleur",
    "Floor",
    "Floortje",
    "Floris",
    "Froukje",
    "Gerard",
    "Gerben",
    "Gerrit",
    "Hendrik",
    "Hans",
    "Henk-Jan",
    "Hidde",
    "Iris",
    "Isa",
    "Jan",
    "Janna",
    "Janneke",
    "Jasmijn",
    "Jasper",
    "Jayden",
    "Jesse",
    "Jetske",
    "Johannes",
    "Jolanda",
    "Joop",
    "Joost",
    "Julia",
    "Julian",
    "Karel",
    "Karlijn",
    "Kees",
    "Kevin",
    "Koen",
    "Lars",
    "Laurentine",
    "Levi",
    "Lia",
    "Lieke",
    "Lieve",
    "Lisa",
    "Lisanne",
    "Lisette",
    "Liza",
    "Lodewijk",
    "Lotte",
    "Lucas",
    "Luuk",
    "Maartje",
    "Madelief",
    "Maikel",
    "Maria",
    "Marie-Claire",
    "Martine",
    "Maud",
    "Maurits",
    "Max",
    "Merel",
    "Michelle",
    "Mike",
    "Milan",
    "Mohamed",
    "Nathalie",
    "Nick",
    "Nicolaas",
    "Niels",
    "Nienke",
    "Noa",
    "Pascalle",
    "Paul",
    "Pien",
    "Piet",
    "Pieter",
    "Pim",
    "Reinier",
    "Renske",
    "Ria",
    "Rianne",
    "Rick",
    "Robbert",
    "Robert-Jan",
    "Roderick",
    "Ronald",
    "Roos",
    "Rozemarijn",
    "Ruben",
    "Sander",
    "Sandra",
    "Sanne",
    "Sebastiaan",
    "Sem",
    "Sietske",
    "Sijmen",
    "Sjoukje",
    "Sophie",
    "Sterre",
    "Stijn",
    "Sven",
    "Tess",
    "Theo",
    "Thijs",
    "Thomas",
    "Tim",
    "Tineke",
    "Tom",
    "Tooske",
    "Twan",
    "Victor",
    "Vincent",
    "Viviènne",
    "Vlinder",
    "Walram",
    "Wilhelmina",
    "Willem",
    "Willemijn",
    "Yinthe",
    "Zwaantje"
  ])

  @doc """
  Returns a random tussenvoegsel

  ## Examples

      iex> Faker.Person.Nl.tussenvoegsel()
      "van der"
      iex> Faker.Person.Nl.tussenvoegsel()
      "den"
      iex> Faker.Person.Nl.tussenvoegsel()
      "van"
      iex> Faker.Person.Nl.tussenvoegsel()
      "de"
  """
  @spec tussenvoegsel() :: String.t()
  sampler(:tussenvoegsel, [
    "de",
    "den",
    "ter",
    "van",
    "van de",
    "van den",
    "van der",
    "van 't"
  ])

  @doc """
  Returns a random last name

    ## Examples

    iex> Faker.Person.Nl.last_name()
    "Vliet"
    iex> Faker.Person.Nl.last_name()
    "Willems"
    iex> Faker.Person.Nl.last_name()
    "Hond"
    iex> Faker.Person.Nl.last_name()
    "Vos"
  """
  @spec last_name() :: String.t()
  sampler(:last_name, [
    "Aalbersberg",
    "Aartsen",
    "Achteren",
    "Bakker",
    "Beek",
    "Beekhuis",
    "Besseling",
    "Berg",
    "Bergen",
    "Bergh",
    "Boer",
    "Boogaard",
    "Boom",
    "Bos",
    "Bosch",
    "Boudewijn",
    "Brink",
    "Broeders",
    "Broek",
    "Brouwer",
    "Bruin",
    "Buijtenhek",
    "Dam",
    "Dekker",
    "Dijk",
    "Dijkstra",
    "Driel",
    "Driessen",
    "Ebbenhorst",
    "Ellemeet",
    "Gelderland",
    "Genderen",
    "Giersbergen",
    "Graaf",
    "Groot",
    "Haan",
    "Hendriks",
    "Heuvel",
    "Hoek",
    "Hond",
    "Hoppenbrouwer",
    "Houwelingen",
    "Huijbrechts",
    "Huisman",
    "IJzendoorn",
    "Jacobs",
    "Jansen",
    "Janssen",
    "Jong",
    "Keizer",
    "Klein",
    "Kok",
    "Koning",
    "Kortekaas",
    "Koster",
    "Kroes",
    "Kruijthoff",
    "Leeuwen",
    "Leeuwenburg",
    "Lelivelt",
    "Linden",
    "Maas",
    "Marijnissen",
    "Markenstein",
    "Mastenbroek",
    "Meer",
    "Meersbergen",
    "Meijer",
    "Meulenberg",
    "Molenaar",
    "Mulder",
    "Naaktgeboren",
    "Nijland",
    "Oldenbarneveld",
    "Oosterhout",
    "Paulusma",
    "Peters",
    "Pijnenburg",
    "Poelman",
    "Ravenhorst",
    "Ridder",
    "Rijn",
    "Ruiter",
    "Rutte",
    "Schaapstra",
    "Schilder",
    "Schimmelpenninck",
    "Schouten",
    "Simons",
    "Singh",
    "Smit",
    "Smits",
    "Spijkerman",
    "Stellingwerff",
    "Stichting",
    "Stokvis",
    "Tan",
    "Timmermans",
    "Tjeerdsma",
    "Vaatstra",
    "Veen",
    "Ven",
    "Vermeulen",
    "Vis",
    "Visser",
    "Vliet",
    "Voorst tot Voorst",
    "Vos",
    "Vries",
    "Waalwijk",
    "Westerling",
    "Wietmarschen",
    "Wal",
    "Willems",
    "Willemstein",
    "Winter",
    "Wit",
    "Witteman",
    "Yilmaz",
    "Zanten",
    "Zee",
    "Zwijnenburg",
    "Zwolle"
  ])

  @doc """
  Returns a random prefix

  ## Examples

      iex> Faker.Person.Nl.prefix()
      "Dhr."
      iex> Faker.Person.Nl.prefix()
      "Mevr."
      iex> Faker.Person.Nl.prefix()
      "Dhr."
      iex> Faker.Person.Nl.prefix()
      "Drs."
  """
  @spec prefix() :: String.t()
  sampler(:prefix, [
    "Dhr.",
    "Mevr.",
    "Mr.",
    "Ing.",
    "Drs."
  ])

  @doc """
  Returns a random suffix

  ## Examples

      iex> Faker.Person.Nl.suffix()
      "Jr."
      iex> Faker.Person.Nl.suffix()
      "PhD"
      iex> Faker.Person.Nl.suffix()
      "Jr."
      iex> Faker.Person.Nl.suffix()
      "PhD"
  """
  @spec suffix() :: String.t()
  sampler(:suffix, [
    "Jr.",
    "Sr.",
    "PhD"
  ])
end
