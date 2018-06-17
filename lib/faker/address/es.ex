defmodule Faker.Address.Es do
  import Faker, only: [sampler: 2]

  alias Faker.Name

  @geobase32 '0123456789bcdefghjkmnpqrstuvwxyz'

  @moduledoc """
  Functions for generating addresses in Spanish
  """

  @doc """
  Return random building number.
  """
  @spec building_number() :: String.t()
  def building_number do
    ["#####", "####", "###", "##", "#"]
    |> Enum.at(Faker.random_between(0, 4))
    |> Faker.format
  end

  @doc """
  Return city name.
  """
  @spec city() :: String.t()
  def city do
    city(Faker.random_between(0, 3))
  end

  defp city(0), do: "#{city_prefix()} #{Name.first_name}"
  defp city(1), do: "#{city_prefix()} #{Name.first_name}"
  defp city(2), do: "#{Name.first_name}"
  defp city(3), do: "#{Name.last_name}"

  @doc """
  Return city prefix.
  """
  @spec city_prefix() :: String.t()
  sampler(:city_prefix, [
    "Parla", 
    "Telde", 
    "Baracaldo", 
    "San Fernando", 
    "Torrevieja", 
    "Lugo", 
    "Santiago de Compostela", 
    "Gerona", 
    "Cáceres", 
    "Lorca", 
    "Coslada", 
    "Talavera de la Reina", 
    "El Puerto de Santa María", 
    "Cornellá de Llobregat", 
    "Avilés", 
    "Palencia", 
    "Gecho", 
    "Orihuela", 
    "Pontevedra", 
    "Pozuelo de Alarcón", 
    "Toledo", 
    "El Ejido", 
    "Guadalajara", 
    "Gandía", 
    "Ceuta", 
    "Ferrol", 
    "Chiclana de la Frontera", 
    "Manresa", 
    "Roquetas de Mar", 
    "Ciudad Real", 
    "Rubí", 
    "Benidorm", 
    "San Sebastían de los Reyes", 
    "Ponferrada", 
    "Zamora", 
    "Alcalá de Guadaira", 
    "Fuengirola", 
    "Mijas", 
    "Sanlúcar de Barrameda", 
    "La Línea de la Concepción", 
    "Majadahonda", 
    "Sagunto", 
    "El Prat de LLobregat", 
    "Viladecans", 
    "Linares", 
    "Alcoy", 
    "Irún", 
    "Estepona", 
    "Torremolinos", 
    "Rivas-Vaciamadrid", 
    "Molina de Segura", 
    "Paterna", 
    "Granollers", 
    "Santa Lucía de Tirajana", 
    "Motril", 
    "Cerdañola del Vallés", 
    "Arrecife", 
    "Segovia", 
    "Torrelavega", 
    "Elda", 
    "Mérida", 
    "Ávila", 
    "Valdemoro", 
    "Cuenta", 
    "Collado Villalba", 
    "Benalmádena", 
    "Mollet del Vallés", 
    "Puertollano", 
    "Madrid", 
    "Barcelona", 
    "Valencia", 
    "Sevilla", 
    "Zaragoza", 
    "Málaga", 
    "Murcia",  
    "Palma de Mallorca", 
    "Las Palmas de Gran Canaria", 
    "Bilbao", 
    "Córdoba", 
    "Alicante", 
    "Valladolid", 
    "Vigo", 
    "Gijón", 
    "Hospitalet de LLobregat", 
    "La Coruña", 
    "Granada", 
    "Vitoria", 
    "Elche", 
    "Santa Cruz de Tenerife", 
    "Oviedo", 
    "Badalona", 
    "Cartagena", 
    "Móstoles", 
    "Jerez de la Frontera", 
    "Tarrasa, Sabadell", 
    "Alcalá de Henares", 
    "Pamplona", 
    "Fuenlabrada", 
    "Almería", 
    "San Sebastián", 
    "Leganés", 
    "Santander", 
    "Burgos", 
    "Castellón de la Plana", 
    "Alcorcón", 
    "Albacete", 
    "Getafe", 
    "Salamanca", 
    "Huelva", 
    "Logroño", 
    "Badajoz", 
    "San Cristróbal de la Laguna", 
    "León", 
    "Tarragona", 
    "Cádiz", 
    "Lérida", 
    "Marbella", 
    "Mataró", 
    "Dos Hermanas", 
    "Santa Coloma de Gramanet", 
    "Jaén, Algeciras", 
    "Torrejón de Ardoz", 
    "Orense", 
    "Alcobendas", 
    "Reus", 
    "Calahorra", 
    "Inca"
  ])

  @doc """
  Return country.
  """
  @spec country() :: String.t()
  sampler(:country, [
    "Afganistán",
    "Albania",
    "Argelia",
    "Andorra",
    "Angola",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbayán",
    "Bahamas",
    "Barein",
    "Bangladesh",
    "Barbados",
    "Bielorusia",
    "Bélgica",
    "Belice",
    "Bermuda",
    "Bután",
    "Bolivia",
    "Bosnia Herzegovina",
    "Botswana",
    "Brasil",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Camboya",
    "Camerún",
    "Canada",
    "Cabo Verde",
    "Islas Caimán",
    "Chad",
    "Chile",
    "China",
    "Isla de Navidad",
    "Colombia",
    "Comodos",
    "Congo",
    "Costa Rica",
    "Costa de Marfil",
    "Croacia",
    "Cuba",
    "Chipre",
    "República Checa", 
    "Dinamarca", 
    "Dominica", 
    "República Dominicana", 
    "Ecuador", 
    "Egipto", 
    "El Salvador", 
    "Guinea Ecuatorial", 
    "Eritrea", 
    "Estonia", 
    "Etiopía", 
    "Islas Faro", 
    "Fiji", 
    "Finlandia", 
    "Francia", 
    "Gabón", 
    "Gambia", 
    "Georgia", 
    "Alemania", 
    "Ghana", 
    "Grecia", 
    "Groenlandia", 
    "Granada", 
    "Guadalupe", 
    "Guam", 
    "Guatemala", 
    "Guinea", 
    "Guinea-Bisau", 
    "Guayana", 
    "Haiti", 
    "Honduras", 
    "Hong Kong", 
    "Hungria", 
    "Islandia", 
    "India", 
    "Indonesia", 
    "Iran", 
    "Irak", 
    "Irlanda", 
    "Italia", 
    "Jamaica", 
    "Japón", 
    "Jordania", 
    "Kazajistan", 
    "Kenia", 
    "Kiribati", 
    "Corea", 
    "Kuwait",
    "Letonia", 
    "Líbano", 
    "Liberia", 
    "Liechtenstein", 
    "Lituania", 
    "Luxemburgo", 
    "Macao", 
    "Macedonia", 
    "Madagascar", 
    "Malawi", 
    "Malasia", 
    "Maldivas", 
    "Mali", 
    "Malta", 
    "Martinica", 
    "Mauritania", 
    "Méjico", 
    "Micronesia", 
    "Moldavia", 
    "Mónaco", 
    "Mongolia", 
    "Montenegro", 
    "Montserrat", 
    "Marruecos", 
    "Mozambique", 
    "Namibia", 
    "Nauru", 
    "Nepal", 
    "Holanda", 
    "Nueva Zelanda", 
    "Nicaragua", 
    "Niger", 
    "Nigeria", 
    "Noruega", 
    "Omán", 
    "Pakistan", 
    "Panamá", 
    "Papúa Nueva Guinea", 
    "Paraguay", 
    "Perú", 
    "Filipinas", 
    "Poland", 
    "Portugal", 
    "Puerto Rico", 
    "Rusia", 
    "Ruanda", 
    "Samoa", 
    "San Marino", 
    "Santo Tomé y Principe", 
    "Arabia Saudí", 
    "Senegal", 
    "Serbia", 
    "Seychelles", 
    "Sierra Leona", 
    "Singapur", 
    "Eslovaquia", 
    "Eslovenia", 
    "Somalia", 
    "España", 
    "Sri Lanka", 
    "Sudán", 
    "Suriname", 
    "Suecia", 
    "Suiza", 
    "Siria", 
    "Taiwan", 
    "Tajikistan", 
    "Tanzania", 
    "Tailandia", 
    "Timor-Leste", 
    "Togo", 
    "Tonga", 
    "Trinidad y Tobago", 
    "Tunez", 
    "Turquia", 
    "Uganda", 
    "Ucrania", 
    "Emiratos Árabes Unidos", 
    "Reino Unido",
    "Estados Unidos de América", 
    "Uruguay",
    "Uzbekistan", 
    "Vanuatu", 
    "Venezuela", 
    "Vietnam", 
    "Yemen", 
    "Zambia", 
    "Zimbabwe"
  ])

  @doc """
  Return country code.
  """
  @spec country_code() :: String.t()
  sampler :country_code, ["ES"]

  @doc """
  Returns a geohash.
  """
  @spec geohash() :: binary
  def geohash do
    bits = encode_to_bits(latitude(), longitude(), Faker.random_between(5, 25) * 5)

    to_geobase32(bits)
  end

  defp encode_to_bits(lat, lon, bits_length) do
    starting_position = bits_length - 1
    lat_bits = lat_to_bits(lat, starting_position - 1) # odd bits
    lon_bits = lon_to_bits(lon, starting_position) # even bits
    geo_bits = lat_bits + lon_bits
    <<geo_bits::size(bits_length)>>
  end

  defp to_geobase32(bits) do
    chars = for << c::5 <- bits >>, do: Enum.fetch!(@geobase32, c)
    chars |> to_string
  end

  defp lon_to_bits(lon, position) do
    geo_to_bits(lon, position, {-180.0, 180.0})
  end

  defp lat_to_bits(lat, position) do
    geo_to_bits(lat, position, {-90.0, 90.0})
  end

  defp geo_to_bits(_, position, _) when position < 0 do
    0
  end
  defp geo_to_bits(n, position, {gmin, gmax}) do
    mid = (gmin + gmax) / 2

    if n >= mid do
        round(:math.pow(2, position)) + geo_to_bits(n, position - 2, {mid, gmax})
    else
        geo_to_bits(n, position - 2, {gmin, mid})
    end
  end

  @doc """
  Return random latitude.
  """
  @spec latitude() :: float()
  def latitude do
    ((Faker.random_uniform * 180) - 90)
  end

  @doc """
  Return random longitude.
  """
  @spec longitude() :: float()
  def longitude do
    ((Faker.random_uniform * 360) - 180)
  end

  @doc """
  Return random postcode.
  """
  @spec postcode() :: String.t()
  defdelegate postcode, to: __MODULE__, as: :zip_code

  @doc """
  Return random secondary address.
  """
  @spec secondary_address() :: String.t
  def secondary_address do
    ["Esc. ###", "Puerta ###"]
    |> Enum.at(Faker.random_between(0, 1))
    |> Faker.format()
  end

  @doc """
  Return state.
  """
  @spec state() :: String.t()
  sampler(:state, [
    "Andalucía",
    "Aragón",
    "Principado de Asturias",
    "Baleares",
    "Canarias",
    "Cantabria",
    "Castilla-La Mancha",
    "Castilla y León",
    "Cataluña",
    "Comunidad Valenciana",
    "Extremadura",
    "Galicia",
    "La Rioja",
    "Comunidad de Madrid, Navarra",
    "País Vasco",
    "Región de Murcia"
  ])

  @doc """
  Return state abbr.
  """
  @spec state_abbr() :: String.t()
  sampler(:state_abbr, [
    "And",
    "Ara",
    "Ast",
    "Bal",
    "Can",
    "Cbr",
    "Man",
    "Leo",
    "Cat",
    "Com",
    "Ext",
    "Gal",
    "Rio",
    "Mad",
    "Nav",
    "Vas",
    "Mur"
  ])

  @doc """
  Return street address.
  """
  @spec street_address() :: String.t()
  def street_address do
    "#{street_name()} #{building_number()}"
  end

  @doc """
  Return `street_address/0` or if argument is `true` adds `secondary_address/0`.
  """
  @spec street_address(true | any) :: String.t()
  def street_address(true), do: street_address() <> " " <> secondary_address()
  def street_address(_), do: street_address()

  @doc """
  Return street name.
  """
  @spec street_name() :: String.t()
  def street_name do
    street_name(Faker.random_between(0, 1))
  end

  defp street_name(0), do: "#{Name.first_name} #{street_suffix()}"
  defp street_name(1), do: "#{Name.last_name} #{street_suffix()}"

  @doc """
  Return street suffix.
  """
  @spec street_suffix() :: String.t()
  sampler(:street_suffix, [
    "Aldea", 
    "Apartamento", 
    "Arrabal", 
    "Arroyo", 
    "Avenida", 
    "Bajada", 
    "Barranco", 
    "Barrio", 
    "Bloque", 
    "Calle", 
    "Calleja", 
    "Camino", 
    "Carretera", 
    "Caserio", 
    "Colegio", 
    "Colonia", 
    "Conjunto", 
    "Cuesta", 
    "Chalet", 
    "Edificio", 
    "Entrada", 
    "Escalinata", 
    "Explanada", 
    "Extramuros",
    "Extrarradio", 
    "Ferrocarril", 
    "Glorieta", 
    "Gran Subida", 
    "Grupo", 
    "Huerta", 
    "Jardines", 
    "Lado", 
    "Lugar", 
    "Manzana", 
    "Masía", 
    "Mercado", 
    "Monte", 
    "Muelle", 
    "Municipio", 
    "Parcela", 
    "Parque", 
    "Partida", 
    "Pasaje", 
    "Paseo", 
    "Plaza", 
    "Poblado", 
    "Polígono", 
    "Prolongación", 
    "Puente", 
    "Puerta", 
    "Quinta", 
    "Ramal", 
    "Rambla", 
    "Rampa", 
    "Riera", 
    "Rincón", 
    "Ronda", 
    "Rua", 
    "Salida", 
    "Sector", 
    "Sección", 
    "Senda", 
    "Solar", 
    "Subida", 
    "Terrenos", 
    "Torrente", 
    "Travesía", 
    "Urbanización", 
    "Vía", 
    "Vía Pública"  
  ])

  @doc """
  Return time zone.
  """
  @spec time_zone() :: String.t()
  sampler(:time_zone, [
    "Pacífico/Midway", 
    "Pacífico/Pago_Pago", 
    "Pacífico/Honolulu", 
    "America/Juneau", 
    "America/Los_Angeles", 
    "America/Tijuana", 
    "America/Denver", 
    "America/Phoenix", 
    "America/Chihuahua", 
    "America/Mazatlan", 
    "America/Chicago", 
    "America/Regina", 
    "America/Mexico_City", 
    "America/Monterrey", 
    "America/Guatemala", 
    "America/New_York", 
    "America/Indiana/Indianapolis", 
    "America/Bogota", 
    "America/Lima", 
    "America/Halifax",
    "America/Caracas", 
    "America/La_Paz", 
    "America/Santiago", 
    "America/St_Johns", 
    "America/Sao_Paulo", 
    "America/Argentina/Buenos_Aires", 
    "America/Guyana", 
    "America/Godthab", 
    "Atlantic/South_Georgia", 
    "Atlantic/Azores, Atlantic/Cape_Verde", 
    "Europa/Dublin", 
    "Europa/Lisbon", 
    "Europa/London", 
    "Africa/Casablanca", 
    "Africa/Monrovia", 
    "Etc/UTC", 
    "Europa/Belgrade", 
    "Europa/Bratislava", 
    "Europa/Budapest", 
    "Europa/Ljubljana", 
    "Europa/Prague", 
    "Europa/Sarajevo", 
    "Europa/Skopje", 
    "Europa/Warsaw", 
    "Europa/Zagreb", 
    "Europa/Brussels", 
    "Europa/Copenhagen", 
    "Europa/Madrid", 
    "Europa/Paris", 
    "Europa/Amsterdam",
    "Europa/Berlin", 
    "Europa/Rome", 
    "Europa/Stockholm", 
    "Europa/Vienna", 
    "Africa/Algiers", 
    "Europa/Bucharest", 
    "Africa/Cairo", 
    "Europa/Helsinki", 
    "Europa/Kiev", 
    "Europa/Riga", 
    "Europa/Sofia", 
    "Europa/Tallinn", 
    "Europa/Vilnius", 
    "Europa/Athens", 
    "Europa/Istanbul", 
    "Europa/Minsk", 
    "Asia/Jerusalen", 
    "Africa/Harare", 
    "Africa/Johannesburg", 
    "Europa/Moscú", 
    "Asia/Kuwait", 
    "Asia/Riyadh", 
    "Africa/Nairobi", 
    "Asia/Baghdad", 
    "Asia/Tehran", 
    "Asia/Muscat", 
    "Asia/Baku", 
    "Asia/Tbilisi", 
    "Asia/Yerevan", 
    "Asia/Kabul", 
    "Asia/Yekaterinburg", 
    "Asia/Karachi", 
    "Asia/Tashkent", 
    "Asia/Kolkata", 
    "Asia/Kathmandu", 
    "Asia/Dhaka", 
    "Asia/Colombo", 
    "Asia/Almaty", 
    "Asia/Novosibirsk", 
    "Asia/Rangoon", 
    "Asia/Bangkok", 
    "Asia/Jakarta", 
    "Asia/Krasnoyarsk", 
    "Asia/Shanghai", 
    "Asia/Chongqing", 
    "Asia/Hong_Kong", 
    "Asia/Urumqi", 
    "Asia/Kuala_Lumpur", 
    "Asia/Singapore", 
    "Asia/Taipei", 
    "Australia/Perth", 
    "Asia/Irkutsk", 
    "Asia/Ulaanbaatar", 
    "Asia/Seoul", 
    "Asia/Tokyo", 
    "Asia/Yakutsk", 
    "Australia/Darwin", 
    "Australia/Adelaide",  
    "Australia/Melbourne", 
    "Australia/Sydney", 
    "Australia/Brisbane", 
    "Australia/Hobart", 
    "Asia/Vladivostok", 
    "Pacífico/Guam", 
    "Pacífico/Port_Moresby", 
    "Asia/Magadan", 
    "Pacífico/Noumea", 
    "Pacífico/Fiji", 
    "Asia/Kamchatka", 
    "Pacífico/Majuro", 
    "Pacífico/Auckland", 
    "Pacífico/Tongatapu", 
    "Pacífico/Fakaofo", 
    "Pacífico/Apia"
  ])

  @doc """
  Return random postcode.
  """
  @spec zip() :: String.t()
  defdelegate zip, to: __MODULE__, as: :zip_code

  @doc """
  Return random postcode.
  """
  @spec zip_code() :: String.t()
  def zip_code do
    ["#####", "#####-####"]
    |> Enum.at(Faker.random_between(0, 1))
    |> Faker.format
  end
end
