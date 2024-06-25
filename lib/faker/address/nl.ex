defmodule Faker.Address.Nl do
  import Faker, only: [sampler: 2]

  alias Faker.Person.Nl, as: Person

  @moduledoc """
  Functions for generating addresses in Dutch
  """

  @doc """
  Return a city name.

  ## Examples

      iex> Faker.Address.Nl.city()
      "Katwijk aan Zee"
      iex> Faker.Address.Nl.city()
      "Wijk bij Duurstede"
      iex> Faker.Address.Nl.city()
      "Sliedrecht"
      iex> Faker.Address.Nl.city()
      "Amsterdam"
  """
  @spec city() :: String.t()
  sampler(:city, [
    "'s-Heerenberg",
    "'s-Hertogenbosch",
    "Acquoy",
    "Alblasserdam",
    "Alkmaar",
    "Almere",
    "Alphen aan den Rijn",
    "Amersfoort",
    "Amsterdam",
    "Amsterdam",
    "Anna Paulowna",
    "Apeldoorn",
    "Arnhem",
    "Baarle-Nassau",
    "Beesd",
    "Bergen op Zoom",
    "Breda",
    "Brielle",
    "Capelle aan den IJssel",
    "Castricum",
    "Coevoorden",
    "Dalfsen",
    "Delft",
    "Den Haag",
    "Den Helder",
    "Deventer",
    "Doetinchem",
    "Dokkum",
    "Dordrecht",
    "Drachten",
    "Ede",
    "Eindhoven",
    "Emmeloord",
    "Emmen",
    "Emmer-Compascuum",
    "Enschede",
    "Gasselterboerveenschemond",
    "Geldermalsen",
    "Goes",
    "Gorinchem",
    "Groesbeek",
    "Groningen",
    "Haarlem",
    "Haarlemmermeer",
    "Harderwijk",
    "Hardinxveld-Giessendam",
    "Heerhugowaard",
    "Heerlen",
    "Hendrik-Ido-Ambacht",
    "Hengelo",
    "Hilversum",
    "Hoogeveen",
    "IJmuiden",
    "Kampen",
    "Katwijk aan Zee",
    "Landgraaf",
    "Leerdam",
    "Leeuwarden",
    "Leiden",
    "Lelystad",
    "Maastricht",
    "Meppel",
    "Middelburg",
    "Naarden",
    "Nijkerk",
    "Nijmegen",
    "Oss",
    "Papendrecht",
    "Purmerend",
    "Roermond",
    "Roosendaal",
    "Rotterdam",
    "Rucphen",
    "Ruigoord",
    "Sleeuwijk",
    "Sliedrecht",
    "Sneek",
    "Stadskanaal",
    "Tilburg",
    "Urk",
    "Utrecht",
    "Valkenburg",
    "Veenendaal",
    "Venlo",
    "Vlaardingen",
    "Vlissingen",
    "Waalwijk",
    "Wageningen",
    "Westland",
    "Wijk bij Duurstede",
    "Wijngaarden",
    "Winterswijk",
    "Zaanstad",
    "Zoetermeer",
    "Zwijndrecht",
    "Zwolle"
  ])

  @doc """
  Return street address.

  ## Examples

      iex> Faker.Address.Nl.street_address()
      "Floortje van Voskade 67"
      iex> Faker.Address.Nl.street_address()
      "Kalver-erf 181"
      iex> Faker.Address.Nl.street_address()
      "Dorpkade 170"
      iex> Faker.Address.Nl.street_address()
      "Lingepark 23"
  """
  @spec street_address() :: String.t()
  def street_address do
    "#{street_name()} #{house_number()}"
  end

  @doc """
  Return street name.

  ## Examples

      iex> Faker.Address.Nl.street_name()
      "Floortje van Voskade"
      iex> Faker.Address.Nl.street_name()
      "Rijnplein"
      iex> Faker.Address.Nl.street_name()
      "Sijmen Hoeklaan"
      iex> Faker.Address.Nl.street_name()
      "Annekesteeg"
  """
  @spec street_name() :: String.t()
  def street_name do
    street_name(Faker.random_between(0, 9))
  end

  defp street_name(0),
    do: "#{Person.first_name()} #{Person.tussenvoegsel()} #{Person.last_name()}#{street_suffix()}"

  defp street_name(1), do: "#{Person.first_name()} #{Person.last_name()}#{street_suffix()}"
  defp street_name(2), do: "#{Person.first_name()}#{street_suffix()}"
  defp street_name(3), do: "#{Person.last_name()}#{street_suffix()}"

  defp street_name(n) when is_integer(n) do
    "#{street_prefix()}#{street_suffix()}"
  end

  @doc """
  Return street prefix.

  ## Examples

      iex> Faker.Address.Nl.street_prefix()
      "Vis"
      iex> Faker.Address.Nl.street_prefix()
      "School"
      iex> Faker.Address.Nl.street_prefix()
      "Hof"
      iex> Faker.Address.Nl.street_prefix()
      "Haven"
  """
  @spec street_prefix() :: String.t()
  sampler(:street_prefix, [
    "Aardappel",
    "Dorp",
    "Gasthuis",
    "Graaf",
    "Groen",
    "Haven",
    "Hof",
    "IJssel",
    "Kalver",
    "Kerk",
    "Konings",
    "Lek",
    "Linge",
    "Maas",
    "Molen",
    "Nieuwe",
    "Noorder",
    "Oude",
    "Parallel",
    "Rijn",
    "School",
    "Vis",
    "Voor",
    "Waal",
    "Wijn",
    "Zand",
    "Zuider"
  ])

  @doc """
  Return street suffix.

  ## Examples

      iex> Faker.Address.Nl.street_suffix()
      "dijk"
      iex> Faker.Address.Nl.street_suffix()
      "-erf"
      iex> Faker.Address.Nl.street_suffix()
      "park"
      iex> Faker.Address.Nl.street_suffix()
      "markt"
  """
  @spec street_suffix() :: String.t()
  sampler(:street_suffix, [
    "dijk",
    "-erf",
    "kade",
    "laan",
    "markt",
    "park",
    "plein",
    "steeg",
    "straat",
    "weg"
  ])

  @doc """
  Return random postcode.

  Dutch zip codes never start with a '0' and always end with two uppercase letters.

  ## Examples

      iex> Faker.Address.Nl.zip_code()
      "2110 LR"
      iex> Faker.Address.Nl.zip_code()
      "8304 EA"
      iex> Faker.Address.Nl.zip_code()
      "9164 GD"
      iex> Faker.Address.Nl.zip_code()
      "2380 WZ"
  """
  @spec zip_code() :: String.t()
  def zip_code do
    "#{Faker.random_between(1000, 9999)} ??"
    |> Faker.format()
    |> String.upcase()
  end

  @doc """
  Return building number.

  But since we rarely use building numbers in the Netherlands, this will call 'Faker.Address.Nl.house_number()' instead.
  """
  @spec building_number :: String.t()
  def building_number, do: house_number()

  @doc """
  Return random house number.

  Dutch house numbers never start with a '0'.

  ## Examples

      iex> Faker.Address.Nl.house_number()
      "211"
      iex> Faker.Address.Nl.house_number()
      "102"
      iex> Faker.Address.Nl.house_number()
      "136"
      iex> Faker.Address.Nl.house_number()
      "105"
  """
  @spec house_number() :: String.t()
  def house_number, do: "#{Faker.random_between(1, 300)}"

  @doc """
  Return a country name.

  Source: https://github.com/faker-ruby/faker

  ## Examples

      iex> Faker.Address.Nl.country()
      "Zuidelijke Oceaan"
      iex> Faker.Address.Nl.country()
      "Sri Lanka"
      iex> Faker.Address.Nl.country()
      "Maldiven"
      iex> Faker.Address.Nl.country()
      "Macedonië"
  """
  @spec country() :: String.t()
  sampler(:country, [
    "Afghanistan",
    "Akrotiri",
    "Albanië",
    "Algerije",
    "Amerikaanse Maagdeneilanden",
    "Amerikaans-Samoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua en Barbuda",
    "Noordelijke IJszee",
    "Argentinië",
    "Armenië",
    "Aruba",
    "Ashmore- en Cartiereilanden",
    "Atlantische Oceaan",
    "Australië",
    "Azerbeidzjan",
    "Bahama's",
    "Bahrein",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "België",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivië",
    "Bosnië-Herzegovina",
    "Botswana",
    "Bouveteiland",
    "Brazilië",
    "Brits Indische Oceaanterritorium",
    "Britse Maagdeneilanden",
    "Brunei",
    "Bulgarije",
    "Burkina Faso",
    "Burundi",
    "Cambodja",
    "Canada",
    "Caymaneilanden",
    "Centraal-Afrikaanse Republiek",
    "Chili",
    "China",
    "Christmaseiland",
    "Clipperton",
    "Cocoseilanden",
    "Colombia",
    "Comoren (Unie)",
    "Congo (Democratische Republiek)",
    "Congo (Volksrepubliek)",
    "Cook",
    "Coral Sea Islands",
    "Costa Rica",
    "Cuba",
    "Cyprus",
    "Denemarken",
    "Dhekelia",
    "Djibouti",
    "Dominica",
    "Dominicaanse Republiek",
    "Duitsland",
    "Ecuador",
    "Egypte",
    "El Salvador",
    "Equatoriaal-Guinea",
    "Eritrea",
    "Estland",
    "Ethiopië",
    "Europese Unie",
    "Falkland",
    "Faeröer",
    "Fiji",
    "Filipijnen",
    "Finland",
    "Frankrijk",
    "Frans-Polynesië",
    "Franse Zuidelijke en Antarctische Gebieden",
    "Gabon",
    "Gambia",
    "Gaza Strip",
    "Georgië",
    "Ghana",
    "Gibraltar",
    "Grenada",
    "Griekenland",
    "Groenland",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinee-Bissau",
    "Guyana",
    "Haïti",
    "Heard en McDonaldeilanden",
    "Heilige Stoel",
    "Honduras",
    "Hongarije",
    "Hongkong",
    "Ierland",
    "IJsland",
    "India",
    "Indian Ocean",
    "Indonesië",
    "Irak",
    "Iran",
    "Isle of Man",
    "Israël",
    "Italië",
    "Ivoorkust",
    "Jamaica",
    "Jan Mayen",
    "Japan",
    "Jemen",
    "Jersey",
    "Jordanië",
    "Kaapverdië",
    "Kameroen",
    "Kazachstan",
    "Kenia",
    "Kirgizstan",
    "Kiribati",
    "Koeweit",
    "Kroatië",
    "Laos",
    "Lesotho",
    "Letland",
    "Libanon",
    "Liberia",
    "Libië",
    "Liechtenstein",
    "Litouwen",
    "Luxemburg",
    "Macao",
    "Macedonië",
    "Madagaskar",
    "Malawi",
    "Maldiven",
    "Maleisië",
    "Mali",
    "Malta",
    "Marokko",
    "Marshalleilanden",
    "Mauritanië",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia, Federale Staten van",
    "Moldavië",
    "Monaco",
    "Mongolië",
    "Montenegro",
    "Montserrat",
    "Mozambique",
    "Myanmar",
    "Namibië",
    "Nauru",
    "Navassa",
    "Nederland",
    "Nederlandse Antillen",
    "Nepal",
    "Ngwane",
    "Nicaragua",
    "Nieuw-Caledonië",
    "Nieuw-Zeeland",
    "Niger",
    "Nigeria",
    "Niue",
    "Noordelijke Marianen",
    "Noord-Korea",
    "Noorwegen",
    "Norfolk (eiland)",
    "Oekraïne",
    "Oezbekistan",
    "Oman",
    "Oostenrijk",
    "Grote Oceaan",
    "Pakistan",
    "Palau",
    "Panama",
    "Papoea-Nieuw-Guinea",
    "Paracel Islands",
    "Paraguay",
    "Peru",
    "Pitcairn",
    "Polen",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Roemenië",
    "Rusland",
    "Rwanda",
    "Saint Helena",
    "Saint Lucia",
    "Saint Vincent en de Grenadines",
    "Saint-Pierre en Miquelon",
    "Salomon",
    "Samoa",
    "San Marino",
    "São Tomé en Principe",
    "Saudi-Arabië",
    "Senegal",
    "Servië",
    "Seychellen",
    "Sierra Leone",
    "Singapore",
    "Sint-Kitts en Nevis",
    "Slovenië",
    "Slowakije",
    "Soedan",
    "Somalië",
    "South Georgia and the South Sandwich Islands",
    "Zuidelijke Oceaan",
    "Spanje",
    "Spratly Islands",
    "Sri Lanka",
    "Suriname",
    "Svalbard",
    "Syrië",
    "Tadzjikistan",
    "Taiwan",
    "Tanzania",
    "Thailand",
    "Timor Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad en Tobago",
    "Tsjaad",
    "Tsjechië",
    "Tunesië",
    "Turkije",
    "Turkmenistan",
    "Turks-en Caicoseilanden",
    "Tuvalu",
    "Uganda",
    "Uruguay",
    "Vanuatu",
    "Venezuela",
    "Verenigd Koninkrijk",
    "Verenigde Arabische Emiraten",
    "Verenigde Staten van Amerika",
    "Vietnam",
    "Wake (eiland)",
    "Wallis en Futuna",
    "Wereld",
    "Westelijke Jordaanoever",
    "Westelijke Sahara",
    "Zambia",
    "Zimbabwe",
    "Zuid-Afrika",
    "Zuid-Korea",
    "Zweden",
    "Zwitserland"
  ])
end
