defmodule Faker.Address.NlBe do
  import Faker, only: [sampler: 2]

  alias Faker.Person.NlBe, as: Person

  @moduledoc """
  Functions for generating addresses and cities in Flemish
  """

  @consonants ~c"bcdfghjklmnprstvw"
  defp consonant do
    char = Enum.at(@consonants, Faker.random_between(0, Enum.count(@consonants) - 1))
    to_string([char])
  end

  @culled_consonants ~c"bdfklmnprst"
  defp culled_consonant do
    char =
      Enum.at(@culled_consonants, Faker.random_between(0, Enum.count(@culled_consonants) - 1))

    to_string([char])
  end

  @vowels ~c"aeiou"
  defp vowel do
    char = Enum.at(@vowels, Faker.random_between(0, Enum.count(@vowels) - 1))
    to_string([char])
  end

  @doc """
  Return a city name.

  ## Examples

      iex> Faker.Address.NlBe.city()
      "Cennelede"
      iex> Faker.Address.NlBe.city()
      "Tussenaken"
      iex> Faker.Address.NlBe.city()
      "Fobbelloon"
      iex> Faker.Address.NlBe.city()
      "Bakkelbergen"
  """
  def city() do
    start = city_prefix()
    "#{start}#{city_suffix(start)}"
  end

  defp city_prefix() do
    String.capitalize("#{consonant()}#{vowel()}#{culled_consonant()}")
  end

  defp city_suffix(city_start) do
    last_letter = String.last(city_start)

    case Faker.random_between(0, 5) do
      0 -> "#{last_letter}e"
      1 -> "#{last_letter}el#{city_suffix_consonant()}"
      2 -> "#{last_letter}el#{city_suffix_vowel()}"
      3 -> "#{last_letter}en#{city_suffix_vowel()}"
      4 -> "#{last_letter}er#{city_suffix_consonant()}"
      _ -> city_suffix_consonant()
    end
  end

  @doc """
  Return a city suffix starting with a consonant

  ## Examples

      iex> Faker.Address.NlBe.city_suffix_consonant()
      "leeuw"
      iex> Faker.Address.NlBe.city_suffix_consonant()
      "muide"
      iex> Faker.Address.NlBe.city_suffix_consonant()
      "loon"
      iex> Faker.Address.NlBe.city_suffix_consonant()
      "pem"
  """
  @spec city_suffix_consonant() :: String.t()
  sampler(:city_suffix_consonant, [
    "berge",
    "bergen",
    "bode",
    "burg",
    "gem",
    "hout",
    "leeuw",
    "loon",
    "monde",
    "muide",
    "munster",
    "pen",
    "pem",
    "poort"
  ])

  @doc """
  Return a city suffix starting with a vowel

  ## Examples

      iex> Faker.Address.NlBe.city_suffix_vowel()
      "aken"
      iex> Faker.Address.NlBe.city_suffix_vowel()
      "are"
      iex> Faker.Address.NlBe.city_suffix_vowel()
      "em"
      iex> Faker.Address.NlBe.city_suffix_vowel()
      "en"
  """
  @spec city_suffix_vowel() :: String.t()
  sampler(:city_suffix_vowel, [
    "aken",
    "are",
    "ede",
    "ene",
    "en",
    "em",
    "egen",
    "egem",
    "ingen",
    "oppem"
  ])

  @doc """
  Return street address.

  ## Examples

      iex> Faker.Address.NlBe.street_address()
      "Pastoor C. Van Weydelaan 267 Bus 12"
      iex> Faker.Address.NlBe.street_address()
      "Akkerhof 170"
      iex> Faker.Address.NlBe.street_address()
      "Stacey Santensstraat 128"
      iex> Faker.Address.NlBe.street_address()
      "Sint-Omerstraat 201"
  """
  @spec street_address() :: String.t()
  def street_address, do: street_address(Faker.random_between(0, 16))

  defp street_address(1) do
    "#{street_name()} #{house_number()} Bus #{Faker.random_between(1, 16)}"
  end

  defp street_address(2) do
    "#{street_name()} #{house_number()} A#{Faker.random_between(1, 8)}"
  end

  defp street_address(_) do
    "#{street_name()} #{house_number()}"
  end

  @doc """
  Return street name.

  ## Examples

      iex> Faker.Address.NlBe.street_name()
      "Maxime Heijmanslaan"
      iex> Faker.Address.NlBe.street_name()
      "Casinoplein"
      iex> Faker.Address.NlBe.street_name()
      "Groentenmarkt"
      iex> Faker.Address.NlBe.street_name()
      "Jozefina Beekmansstraat"
  """
  @spec street_name() :: String.t()
  def street_name do
    street_name(Faker.random_between(0, 9))
  end

  defp street_name(0),
    do: "#{Person.first_name()} #{last_name_for_street_names()}#{street_suffix_common()}"

  defp street_name(1),
    do:
      "#{street_person_prefix()} #{String.capitalize(Faker.format("?"))}. #{last_name_for_street_names()}#{street_suffix_common()}"

  defp street_name(2), do: "Sint-#{Person.first_name()}#{street_suffix_common()}"
  defp street_name(3), do: "#{street_prefix()} #{street_name_prefix()}#{street_suffix_common()}"
  defp street_name(4), do: "#{building()}#{street_suffix_common()}"
  defp street_name(5), do: "#{building()}#{street_suffix_common()}"
  defp street_name(6), do: place()

  defp street_name(n) when is_integer(n) do
    "#{street_name_prefix()}#{street_suffix()}"
  end

  # Avoiding composed last names here
  defp last_name_for_street_names(), do: last_name_for_street_names(Faker.random_between(0, 3))
  defp last_name_for_street_names(0), do: "Van #{Person.last_name_after_van()}"
  defp last_name_for_street_names(1), do: "De #{Person.last_name_after_de()}"
  defp last_name_for_street_names(_), do: Person.last_name_standalone()

  @doc """
  Return street prefix.

  ## Examples

      iex> Faker.Address.NlBe.street_prefix()
      "Nieuwe"
      iex> Faker.Address.NlBe.street_prefix()
      "Korte"
      iex> Faker.Address.NlBe.street_prefix()
      "Hoge"
      iex> Faker.Address.NlBe.street_prefix()
      "Lage"
  """
  @spec street_prefix() :: String.t()
  sampler(:street_prefix, [
    "Nieuwe",
    "Oude",
    "Lage",
    "Hoge",
    "Lange",
    "Korte"
  ])

  @doc """
  Return street prefix for streets named after famous persons.

  ## Examples

      iex> Faker.Address.NlBe.street_person_prefix()
      "Generaal"
      iex> Faker.Address.NlBe.street_person_prefix()
      "Professor"
      iex> Faker.Address.NlBe.street_person_prefix()
      "Pastoor"
      iex> Faker.Address.NlBe.street_person_prefix()
      "Heilige"
  """
  @spec street_person_prefix() :: String.t()
  sampler(:street_person_prefix, [
    "Generaal",
    "Graaf",
    "Heilige",
    "Pastoor",
    "Pater",
    "Professor"
  ])

  @doc """
  Return street name prefix.

  ## Examples

      iex> Faker.Address.NlBe.street_name_prefix()
      "Fazant"
      iex> Faker.Address.NlBe.street_name_prefix()
      "Fakkel"
      iex> Faker.Address.NlBe.street_name_prefix()
      "Ikarus"
      iex> Faker.Address.NlBe.street_name_prefix()
      "Beuk"
  """
  @spec street_name_prefix() :: String.t()
  sampler(:street_name_prefix, [
    "Adelaar",
    "Akker",
    "Aster",
    "Begijn",
    "Berg",
    "Beuk",
    "Blok",
    "Bok",
    "Bos",
    "Camille",
    "Ceder",
    "Citroen",
    "Dam",
    "Denker",
    "Distel",
    "Donker",
    "Eekberg",
    "Eik",
    "Esdoorn",
    "Ezel",
    "Fakkel",
    "Fazant",
    "Floraliën",
    "Frankrijk",
    "Frikkandel",
    "Gendarmerie",
    "Hagen",
    "Heir",
    "Heren",
    "Hoofd",
    "Huidevetters",
    "Ieper",
    "Ierland",
    "Ikarus",
    "Janus",
    "Jordanië",
    "Koe",
    "Koekoek",
    "Kolibrie",
    "Kroon",
    "Kronenhoek",
    "Laars",
    "Lammer",
    "Lelie",
    "Limoen",
    "Maan",
    "Margriet",
    "Mijnwerker",
    "Mol",
    "Muiterij",
    "Nachtegaal",
    "Nieuw",
    "Nijverheid",
    "Nobel",
    "Park",
    "Pastoor",
    "Pater",
    "Pomp",
    "Raaf",
    "Reep",
    "Rivier",
    "Rovers",
    "Savaan",
    "Schaapdrijver",
    "Schoen",
    "Sluis",
    "Sterre",
    "Tartarus",
    "Tierlantijn",
    "Tollenaar",
    "Tuin",
    "Uilenspiegel",
    "Vaandel",
    "Veldwachter",
    "Viool",
    "Vogel",
    "Wapper",
    "Warande",
    "Zebra",
    "Zonne",
    "Zout"
  ])

  @doc """
  Returns random street suffix (common).

  ## Examples

      iex> Faker.Address.NlBe.street_suffix_common()
      "laan"
      iex> Faker.Address.NlBe.street_suffix_common()
      "straat"
      iex> Faker.Address.NlBe.street_suffix_common()
      "straat"
      iex> Faker.Address.NlBe.street_suffix_common()
      "laan"
  """
  @spec street_suffix_common() :: String.t()
  sampler(:street_suffix_common, [
    "laan",
    "straat"
  ])

  @doc """
  Returns random street suffix.

  ## Examples

      iex> Faker.Address.NlBe.street_suffix()
      "poort"
      iex> Faker.Address.NlBe.street_suffix()
      "straat"
      iex> Faker.Address.NlBe.street_suffix()
      "straat"
      iex> Faker.Address.NlBe.street_suffix()
      "straat"
  """
  @spec street_suffix() :: String.t()
  sampler(:street_suffix, [
    "hof",
    "laan",
    "lei",
    "poort",
    "rei",
    "steeg",
    "straat",
    "vest",
    "wegel",
    "weg",
    "kaai"
  ])

  @doc """
  Return randon building

  Streets are often named after important community buildings

  ## Examples

      iex> Faker.Address.NlBe.building()
      "Abdij"
      iex> Faker.Address.NlBe.building()
      "Museum"
      iex> Faker.Address.NlBe.building()
      "Museum"
      iex> Faker.Address.NlBe.building()
      "Kerkhof"
  """
  @spec building() :: String.t()
  sampler(:building, [
    "Abdij",
    "Aquarium",
    "Apotheek",
    "Atelier",
    "Bakker",
    "Begijnhof",
    "Beenhouwer",
    "Beurs",
    "Bioscoop",
    "Boomgaard",
    "Brandweer",
    "Brasserie",
    "Brouwerij",
    "Burg",
    "Café",
    "Cathedraal",
    "Cinema",
    "Citadel",
    "College",
    "Crèche",
    "Dekenij",
    "Dierentuin",
    "Drogisterij",
    "Eethuis",
    "Fabriek",
    "Gallerij",
    "Gasthuis",
    "Gevangenis",
    "Gymnasium",
    "Hospitaal",
    "Hotel",
    "Internaat",
    "Kapel",
    "Kasteel",
    "Kazerne",
    "Kerk",
    "Kerkhof",
    "Kiosk",
    "Klooster",
    "Kroeg",
    "Markt",
    "Museum",
    "Opera",
    "Restaurant",
    "Schouwburg",
    "School",
    "Slachthuis",
    "Sportveld",
    "Stadhuis",
    "Stadium",
    "Station",
    "Tandarts",
    "Taverne",
    "Theater",
    "Toren",
    "Universiteit",
    "Visserij",
    "Weverij",
    "Wijngaard",
    "Winkel",
    "Zagerij",
    "Ziekenhuis"
  ])

  @doc """
  Return random places

  ## Examples

      iex> Faker.Address.NlBe.place()
      "Kerkplein"
      iex> Faker.Address.NlBe.place()
      "Huidenvettersplein"
      iex> Faker.Address.NlBe.place()
      "Koningsmarkt"
      iex> Faker.Address.NlBe.place()
      "Kleine Markt"
  """
  @spec place() :: String.t()
  sampler(:place, [
    # markets
    "Dierenmarkt",
    "Eiermarkt",
    "Garenmarkt",
    "Groentenmarkt",
    "Grote Markt",
    "Kleine Markt",
    "Koningsmarkt",
    "Korenmarkt",
    "Schoenmarkt",
    "Stadsmarkt",
    "Vismarkt",
    "Vlasmarkt",
    "Vleesmarkt",
    "Vogelmarkt",
    "Vrijdagmarkt",
    # squares
    "Aalmoezeniersplein",
    "Ankerplein",
    "Assisenplein",
    "Beursplein",
    "Casinoplein",
    "Huidenvettersplein",
    "Kerkplein",
    "Operaplein",
    # other
    "Dries",
    "Groenplaats",
    "Patershoek",
    "Kouter"
  ])

  @doc """
  Return random postcode.

  Belgian zip codes are 4-digit numbers.

  ## Examples

      iex> Faker.Address.NlBe.zip_code()
      "2110"
      iex> Faker.Address.NlBe.zip_code()
      "7401"
      iex> Faker.Address.NlBe.zip_code()
      "9835"
      iex> Faker.Address.NlBe.zip_code()
      "8304"
  """
  @spec zip_code() :: String.t()
  def zip_code do
    to_string(Faker.random_between(1000, 9999))
  end

  defdelegate building_number(), to: Faker.Address.Nl, as: :building_number

  defdelegate country(), to: Faker.Address.Nl, as: :country

  defdelegate house_number(), to: Faker.Address.Nl, as: :house_number
end
