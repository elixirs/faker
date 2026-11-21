defmodule Faker.Address.Da do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating addresses in Danish
  """

  @doc """
  Return random building number.

  ## Examples

      iex> Faker.Address.Da.building_number()
      "115"
      iex> Faker.Address.Da.building_number()
      "126"
      iex> Faker.Address.Da.building_number()
      "161"
      iex> Faker.Address.Da.building_number()
      "183"
  """
  @spec building_number() :: String.t()
  def building_number do
    ["1##", "1#"]
    |> Enum.at(Faker.random_between(0, 1))
    |> Faker.format()
  end

  @doc """
  Return city name.

  ## Examples

      iex> Faker.Address.Da.city()
      "Lillerød"
      iex> Faker.Address.Da.city()
      "Ringsted"
      iex> Faker.Address.Da.city()
      "Haderslev"
      iex> Faker.Address.Da.city()
      "Skanderborg"
  """
  @spec city() :: String.t()
  sampler(:city, [
    "København",
    "Aarhus",
    "Odense",
    "Aalborg",
    "Esbjerg",
    "Randers",
    "Kolding",
    "Horsens",
    "Vejle",
    "Roskilde",
    "Herning",
    "Hørsholm",
    "Helsingør",
    "Silkeborg",
    "Næstved",
    "Fredericia",
    "Viborg",
    "Køge",
    "Holstebro",
    "Taastrup",
    "Slagelse",
    "Hillerød",
    "Holbæk",
    "Sønderborg",
    "Svendborg",
    "Hjørring",
    "Frederikshavn",
    "Glostrup",
    "Haderslev",
    "Nørresundby",
    "Ringsted",
    "Aabenraa",
    "Frederiksberg",
    "Skanderborg",
    "Nyborg",
    "Varde",
    "Grenaa",
    "Ballerup",
    "Thisted",
    "Albertslund",
    "Farum",
    "Lillerød",
    "Ishøj",
    "Birkerød",
    "Skive",
    "Korsør",
    "Tårnby",
    "Rødovre",
    "Vallensbæk"
  ])

  @doc """
  Return country.

  ## Examples

      iex> Faker.Address.Da.country()
      "Saudi-Arabien"
      iex> Faker.Address.Da.country()
      "Tyskland"
      iex> Faker.Address.Da.country()
      "Saudi-Arabien"
      iex> Faker.Address.Da.country()
      "Grønland"
  """
  @spec country() :: String.t()
  sampler(:country, [
    "Afghanistan",
    "Albanien",
    "Algeriet",
    "Andorra",
    "Angola",
    "Argentina",
    "Armenien",
    "Australien",
    "Østrig",
    "Aserbajdsjan",
    "Bahrain",
    "Bangladesh",
    "Belgien",
    "Brasilien",
    "Bulgarien",
    "Canada",
    "Chile",
    "Kina",
    "Colombia",
    "Danmark",
    "Ecuador",
    "Egypten",
    "Estland",
    "Finland",
    "Frankrig",
    "Georgien",
    "Tyskland",
    "Ghana",
    "Grækenland",
    "Grønland",
    "Ungarn",
    "Island",
    "Indien",
    "Indonesien",
    "Iran",
    "Irak",
    "Irland",
    "Israel",
    "Italien",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Sydkorea",
    "Kuwait",
    "Letland",
    "Libanon",
    "Litauen",
    "Luxembourg",
    "Malaysia",
    "Mexico",
    "Marokko",
    "Holland",
    "New Zealand",
    "Norge",
    "Pakistan",
    "Polen",
    "Portugal",
    "Rumænien",
    "Rusland",
    "Saudi-Arabien",
    "Serbien",
    "Singapore",
    "Slovakiet",
    "Slovenien",
    "Sydafrika",
    "Spanien",
    "Sverige",
    "Schweiz",
    "Thailand",
    "Tyrkiet",
    "Ukraine",
    "Storbritannien",
    "USA",
    "Venezuela"
  ])

  @doc """
  Return random secondary address.

  ## Examples

      iex> Faker.Address.Da.secondary_address()
      "1. sal tv"
      iex> Faker.Address.Da.secondary_address()
      "4. tv"
      iex> Faker.Address.Da.secondary_address()
      "6. sal th"
      iex> Faker.Address.Da.secondary_address()
      "st. th"
  """
  @spec secondary_address() :: String.t()
  def secondary_address do
    [
      "st. tv",
      "st. th",
      "st. mf",
      "#. sal tv",
      "#. sal th",
      "#. sal mf",
      "#. tv",
      "#. th",
      "#. mf"
    ]
    |> Enum.at(Faker.random_between(0, 8))
    |> Faker.format()
  end

  @doc """
  Return street name.

  ## Examples

      iex> Faker.Address.Da.street_name()
      "Marie Johansens Vej"
      iex> Faker.Address.Da.street_name()
      "Søndergade"
      iex> Faker.Address.Da.street_name()
      "Christians Alle"
      iex> Faker.Address.Da.street_name()
      "Hovedgaden"
  """
  @spec street_name() :: String.t()
  sampler(:street_name, [
    "Nørregade",
    "Søndergade",
    "Vestergade",
    "Østergade",
    "Hovedgaden",
    "Strandvejen",
    "Skolegade",
    "Torvet",
    "Hans Jensens Alle",
    "Peter Nielsens Boulevard",
    "Marie Johansens Vej",
    "Lars Andersens Gade",
    "Anna Petersens Stræde",
    "Tværvej",
    "Bakkevej",
    "Jægersborggade",
    "Bredgade",
    "Langgade",
    "Farvergade",
    "Smedesvej",
    "Møllevej",
    "Kongens Gade",
    "Dronningens Gade",
    "Kirketorv",
    "Havnegade",
    "Skovvej",
    "Rosenvej",
    "Birkevej",
    "Egevej",
    "Lindevej",
    "Nygade",
    "Gamle Kirkevej",
    "Ny Strandvej",
    "Store Torv",
    "Lille Torv",
    "Christians Alle",
    "Frederiks Boulevard",
    "Annes Gade",
    "Sofies Vej",
    "Mads Hansens Stræde",
    "Ole Jensens Passage",
    "Margrete Alle",
    "Valdemars Gade",
    "Niels Borhs Vej",
    "H.C. Andersens Boulevard",
    "Karen Blixens Vej",
    "Søren Kierkegaards Alle",
    "Tycho Brahes Gade",
    "Absalons Gade",
    "Saxos Alle"
  ])

  @doc """
  Return street address.

  ## Examples

      iex> Faker.Address.Da.street_address()
      "Søndergade 14"
      iex> Faker.Address.Da.street_address()
      "Bredgade 161a"
      iex> Faker.Address.Da.street_address()
      "Kirketorv 197, 5. sal tv"
      iex> Faker.Address.Da.street_address()
      "Kirketorv 17c"
  """
  @spec street_address() :: String.t()
  def street_address do
    case Faker.random_between(0, 2) do
      0 ->
        "#{street_name()} #{building_number()}"

      1 ->
        "#{street_name()} #{building_number()}#{Enum.at(["a", "b", "c"], Faker.random_between(0, 2))}"

      2 ->
        "#{street_name()} #{building_number()}" <> ", " <> secondary_address()
    end
  end

  @doc """
  Return random Danish postcode.

  ## Examples

      iex> Faker.Address.Da.zip_code()
      "0154"
      iex> Faker.Address.Da.zip_code()
      "2646"
      iex> Faker.Address.Da.zip_code()
      "1083"
      iex> Faker.Address.Da.zip_code()
      "2970"
  """
  @spec zip_code() :: String.t()
  def zip_code do
    ["####"]
    |> Enum.at(0)
    |> Faker.format()
  end
end
