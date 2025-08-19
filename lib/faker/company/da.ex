defmodule Faker.Company.Da do
  import Faker, only: [sampler: 2]

  alias Faker.Person.Da, as: Person

  @moduledoc """
  Functions for company data in Danish
  """

  @doc """
  Returns a random complete Danish business related bullshit

  ## Examples

      iex> Faker.Company.Da.bs()
      "beskytte lokale løsninger"
      iex> Faker.Company.Da.bs()
      "etablere skalerbare frameworks"
      iex> Faker.Company.Da.bs()
      "verificere intelligente partnerskaber"
      iex> Faker.Company.Da.bs()
      "synkronisere cloud-baserede interfaces"
  """
  @spec bs() :: String.t()
  def bs, do: "#{bullshit_prefix()} #{bullshit()} #{bullshit_suffix()}"

  @doc """
  Returns a random Danish business related bullshit

  ## Examples

      iex> Faker.Company.Da.bullshit()
      "databaserede"
      iex> Faker.Company.Da.bullshit()
      "lokale"
      iex> Faker.Company.Da.bullshit()
      "innovative"
      iex> Faker.Company.Da.bullshit()
      "AI-drevne"
  """
  @spec bullshit() :: String.t()
  sampler(:bullshit, [
    "innovative",
    "digitale",
    "skalerbare",
    "brugervenlige",
    "bæredygtige",
    "effektive",
    "intelligente",
    "automatiserede",
    "integrerede",
    "fleksible",
    "sikre",
    "moderne",
    "avancerede",
    "strategiske",
    "dynamiske",
    "globale",
    "lokale",
    "mobile",
    "cloud-baserede",
    "AI-drevne",
    "databaserede",
    "responsive",
    "adaptive",
    "optimerede",
    "personaliserede",
    "kollaborative",
    "transparente",
    "agile",
    "holistiske",
    "kundecentrerede",
    "værdibaserede",
    "fremtidssikrede",
    "miljøvenlige",
    "sociale",
    "etiske"
  ])

  @doc """
  Returns a random Danish business related bullshit prefix

  ## Examples

      iex> Faker.Company.Da.bullshit_prefix()
      "beskytte"
      iex> Faker.Company.Da.bullshit_prefix()
      "sikre"
      iex> Faker.Company.Da.bullshit_prefix()
      "accelerere"
      iex> Faker.Company.Da.bullshit_prefix()
      "etablere"
  """
  @spec bullshit_prefix() :: String.t()
  sampler(:bullshit_prefix, [
    "implementere",
    "udvikle",
    "optimere",
    "integrere",
    "automatisere",
    "digitalisere",
    "transformere",
    "modernisere",
    "effektivisere",
    "skalere",
    "personalisere",
    "standardisere",
    "synkronisere",
    "koordinere",
    "facilitere",
    "accelerere",
    "maksimere",
    "minimere",
    "analysere",
    "evaluere",
    "generere",
    "producere",
    "levere",
    "administrere",
    "styre",
    "overvåge",
    "kontrollere",
    "validere",
    "verificere",
    "sikre",
    "beskytte",
    "oprette",
    "etablere",
    "lancere",
    "introducere",
    "revolutionere"
  ])

  @doc """
  Returns a random Danish business related bullshit suffix

  ## Examples

      iex> Faker.Company.Da.bullshit_suffix()
      "strategier"
      iex> Faker.Company.Da.bullshit_suffix()
      "frameworks"
      iex> Faker.Company.Da.bullshit_suffix()
      "løsninger"
      iex> Faker.Company.Da.bullshit_suffix()
      "metodologier"
  """
  @spec bullshit_suffix() :: String.t()
  sampler(:bullshit_suffix, [
    "løsninger",
    "systemer",
    "platforme",
    "interfaces",
    "applikationer",
    "services",
    "teknologier",
    "processer",
    "workflows",
    "strukturer",
    "arkitekturer",
    "infrastrukturer",
    "netværk",
    "databaser",
    "algoritmer",
    "modeller",
    "frameworks",
    "protokoller",
    "standarder",
    "metodologier",
    "strategier",
    "koncepter",
    "initiativer",
    "projekter",
    "programmer",
    "kanaler",
    "partnerskaber",
    "relationer",
    "oplevelser",
    "interaktioner",
    "værktøjer",
    "ressourcer",
    "kapaciteter",
    "kompetencer",
    "muligheder"
  ])

  @doc """
  Returns a random Danish business related buzzword

  ## Examples

      iex> Faker.Company.Da.buzzword()
      "fremtidssikret"
      iex> Faker.Company.Da.buzzword()
      "digital"
      iex> Faker.Company.Da.buzzword()
      "intuitive"
      iex> Faker.Company.Da.buzzword()
      "personaliseret"
  """
  @spec buzzword() :: String.t()
  sampler(:buzzword, [
    "innovativ",
    "digital",
    "skalerbar",
    "brugercentreret",
    "bæredygtig",
    "effektiv",
    "intelligent",
    "automatiseret",
    "integreret",
    "fleksibel",
    "sikker",
    "moderne",
    "avanceret",
    "strategisk",
    "dynamisk",
    "global",
    "lokal",
    "mobil",
    "cloud-baseret",
    "AI-drevet",
    "databaseret",
    "responsiv",
    "adaptiv",
    "optimeret",
    "personaliseret",
    "kollaborativ",
    "transparent",
    "agil",
    "holistisk",
    "værdibaseret",
    "fremtidssikret",
    "miljøvenlig",
    "social",
    "etisk",
    "interaktiv",
    "intuitive",
    "robust",
    "pålidelig",
    "stabil",
    "sammenhængende"
  ])

  @doc """
  Returns a random Danish business related buzzword prefix

  ## Examples

      iex> Faker.Company.Da.buzzword_prefix()
      "Centraliseret"
      iex> Faker.Company.Da.buzzword_prefix()
      "Kundefokuseret"
      iex> Faker.Company.Da.buzzword_prefix()
      "Optimeret"
      iex> Faker.Company.Da.buzzword_prefix()
      "Programmerbar"
  """
  @spec buzzword_prefix() :: String.t()
  sampler(:buzzword_prefix, [
    "Adaptiv",
    "Avanceret",
    "Forbedret",
    "Automatiseret",
    "Balanceret",
    "Forretningsfokuseret",
    "Centraliseret",
    "Kompatibel",
    "Konfigurerbar",
    "Kundefokuseret",
    "Tilpasselig",
    "Decentraliseret",
    "Distribueret",
    "Diversificeret",
    "Udvidet",
    "Erhvervsvenlig",
    "Ergonomisk",
    "Eksklusiv",
    "Fokuseret",
    "Funktionsbaseret",
    "Fundamental",
    "Fremtidssikret",
    "Horisontal",
    "Implementeret",
    "Innovativ",
    "Integreret",
    "Intuitiv",
    "Administreret",
    "Overvåget",
    "Flerkanalig",
    "Flerlags",
    "Netværksbaseret",
    "Objektbaseret",
    "Open source",
    "Operativ",
    "Optimeret",
    "Organisk",
    "Organiseret",
    "Proaktiv",
    "Profitfokuseret",
    "Programmerbar",
    "Progressiv",
    "Kvalitetsfokuseret",
    "Reaktiv",
    "Robust",
    "Sikker",
    "Selvstændig",
    "Strømlinet",
    "Synkroniseret",
    "Teamorienteret",
    "Universal",
    "Brugercentreret",
    "Brugervenlig",
    "Alsidig",
    "Virtuell",
    "Visionær"
  ])

  @doc """
  Returns a random Danish business related buzzword suffix

  ## Examples

      iex> Faker.Company.Da.buzzword_suffix()
      "lokalt netværk"
      iex> Faker.Company.Da.buzzword_suffix()
      "taskforce"
      iex> Faker.Company.Da.buzzword_suffix()
      "projektion"
      iex> Faker.Company.Da.buzzword_suffix()
      "arkitektur"
  """
  @spec buzzword_suffix() :: String.t()
  sampler(:buzzword_suffix, [
    "evne",
    "adgang",
    "adapter",
    "algoritme",
    "alliance",
    "analysator",
    "applikation",
    "tilgang",
    "arkitektur",
    "arkiv",
    "kunstig intelligens",
    "array",
    "attitude",
    "benchmark",
    "budgetledelse",
    "kapacitet",
    "udfordring",
    "kredsløb",
    "samarbejde",
    "kompleksitet",
    "koncept",
    "konglomerat",
    "beredskab",
    "kerne",
    "kundeloyalitet",
    "database",
    "datawarehouse",
    "definition",
    "emulering",
    "kodning",
    "kryptering",
    "extranet",
    "firmware",
    "fleksibilitet",
    "fokusgruppe",
    "prognose",
    "ramme",
    "framework",
    "funktion",
    "funktionaliteter",
    "interface",
    "groupware",
    "hardware",
    "helpdesk",
    "hierarki",
    "hub",
    "implementering",
    "infrastruktur",
    "initiativ",
    "installation",
    "instruktionssæt",
    "internetløsning",
    "intranet",
    "videnbase",
    "lokalt netværk",
    "metodologi",
    "middleware",
    "migration",
    "model",
    "moderator",
    "overvågning",
    "moratorium",
    "neuralt net",
    "åben arkitektur",
    "åbent system",
    "orkestrering",
    "paradigme",
    "parallelisme",
    "politik",
    "portal",
    "prisstruktur",
    "procesforbedring",
    "produkt",
    "produktivitet",
    "projekt",
    "projektion",
    "protokol",
    "sikker linje",
    "servicedesk",
    "software",
    "løsning",
    "standardisering",
    "strategi",
    "struktur",
    "succes",
    "superstruktur",
    "support",
    "synergi",
    "systemmotor",
    "taskforce",
    "gennemløb",
    "tidsramme",
    "værktøjssæt",
    "udnyttelse",
    "hjemmeside",
    "arbejdsstyrke"
  ])

  @doc """
  Returns a random complete Danish catch phrase

  ## Examples

      iex> Faker.Company.Da.catch_phrase()
      "Centraliseret digital projektion"
      iex> Faker.Company.Da.catch_phrase()
      "Programmerbar social applikation"
      iex> Faker.Company.Da.catch_phrase()
      "Overvåget intelligent definition"
      iex> Faker.Company.Da.catch_phrase()
      "Distribueret stabil tidsramme"
  """
  @spec catch_phrase() :: String.t()
  def catch_phrase, do: "#{buzzword_prefix()} #{buzzword()} #{buzzword_suffix()}"

  @doc """
  Returns complete Danish company name

  ## Examples

      iex> Faker.Company.Da.name()
      "Jacobsen og Sønner"
      iex> Faker.Company.Da.name()
      "Kristensen, Henriksen og Jørgensen"
      iex> Faker.Company.Da.name()
      "Schmidt, Møller og Olsen"
      iex> Faker.Company.Da.name()
      "Sørensen-Hansen"
  """
  @spec name() :: String.t()
  def name, do: name(Faker.random_between(0, 2))
  defp name(0), do: "#{Person.last_name()} #{suffix()}"
  defp name(1), do: "#{Person.last_name()}-#{Person.last_name()}"

  defp name(2) do
    "#{Person.last_name()}, #{Person.last_name()} og #{Person.last_name()}"
  end

  @doc """
  Returns a random type of Danish business entity

  ## Examples

      iex> Faker.Company.Da.suffix()
      "Holding"
      iex> Faker.Company.Da.suffix()
      "ApS"
      iex> Faker.Company.Da.suffix()
      "og Sønner"
      iex> Faker.Company.Da.suffix()
      "A/S"
  """
  @spec suffix() :: String.t()
  sampler(:suffix, [
    "A/S",
    "ApS",
    "I/S",
    "og Sønner",
    "og Døtre",
    "Gruppe",
    "Holding",
    "Koncern"
  ])
end
