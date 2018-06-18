defmodule Faker.Address do
  import Faker, only: [sampler: 2]

  alias Faker.Name

  @geobase32 '0123456789bcdefghjkmnpqrstuvwxyz'

  @moduledoc """
  Functions for generating addresses.
  """

  @doc """
  Return random building number.

  ## Examples

      iex> Faker.Address.building_number()
      #=> "99"
  """
  @spec building_number() :: String.t()
  def building_number do
    Module.concat(__MODULE__, Faker.mlocale).building_number
  end

  @doc """
  Return city name.

  ## Examples

      iex> Faker.Address.city()
      #=> "Palmaberg"
  """
  @spec city() :: String.t()
  def city do
    Module.concat(__MODULE__, Faker.mlocale).building_number
  end

  defp city(0), do: "#{city_prefix()} #{Name.first_name()}#{city_suffix()}"
  defp city(1), do: "#{city_prefix()} #{Name.first_name()}"
  defp city(2), do: "#{Name.first_name()}#{city_suffix()}"
  defp city(3), do: "#{Name.last_name()}#{city_suffix()}"

  @doc """
  Return city prefix.

  ## Examples

      iex> Faker.address.city_prefix()
      #=> "West"
  """
  @spec city_prefix() :: String.t()
  def city_prefix do
    Module.concat(__MODULE__, Faker.mlocale).city_prefix
  end

  @doc """
  Return city suffix.

  ## Examples

      iex> Faker.Address.city_suffix()
      #=> "ton"
  """
  @spec city_suffix() :: String.t()
  def city_suffix do
    Module.concat(__MODULE__, Faker.mlocale).city_suffix
  end

  @doc """
  Return country.

  ## Examples

      iex> Faker.Address.country()
      #=> "Belize"
  """
  @spec country() :: String.t()
  def country do
    Module.concat(__MODULE__, Faker.mlocale).country
  end

  @doc """
  Return country code.

  ## Examples

      iex> Faker.Address.country_code()
      #=> "RO"
  """
  @spec country_code() :: String.t()
  def country_code do
    Module.concat(__MODULE__, Faker.mlocale).country_code
  end

  @doc """
  Returns a geohash.

  ## Examples

      iex> Faker.Address.geohash()
      #=> "00q599mndtt20t"
  """
  @spec geohash() :: binary
  def geohash do
    bits = encode_to_bits(latitude(), longitude(), Faker.random_between(5, 25) * 5)

    to_geobase32(bits)
  end

  defp encode_to_bits(lat, lon, bits_length) do
    starting_position = bits_length - 1
    # odd bits
    lat_bits = lat_to_bits(lat, starting_position - 1)
    # even bits
    lon_bits = lon_to_bits(lon, starting_position)
    geo_bits = lat_bits + lon_bits
    <<geo_bits::size(bits_length)>>
  end

  defp to_geobase32(bits) do
    chars = for <<c::5 <- bits>>, do: Enum.fetch!(@geobase32, c)
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

  ## Examples

      iex> Faker.Address.latitude()
      #=> "45.41060470043868"
  """
  @spec latitude() :: float
  def latitude do
    Faker.random_uniform() * 180 - 90
  end

  @doc """
  Return random longitude.

  ## Examples

      iex> Faker.Address.longitude()
      #=> "-84.34087878300942"
  """
  @spec longitude() :: float
  def longitude do
    Faker.random_uniform() * 360 - 180
  end

  @doc """
  Return random postcode.

  ## Examples

      iex> Faker.Address.postcode()
      #=> "25062"
  """
  @spec postcode() :: String.t()
  defdelegate postcode, to: __MODULE__, as: :zip_code

  @doc """
  Return random secondary address.

  ## Examples

      iex> Faker.Address.secondary_address()
      #=> "Suite 097"
  """
  @spec secondary_address() :: String.t()
  def secondary_address do
    Module.concat(__MODULE__, Faker.mlocale).secondary_address
  end

  @doc """
  Return state.

  ## Examples

      iex> Faker.Address.state()
      #=> "Massachusetts"
  """
  @spec state() :: String.t()
  def state do
    Module.concat(__MODULE__, Faker.mlocale).state
  end

  @doc """
  Return state abbr.

  ## Examples

      iex> Faker.Address.state_abbr()
      #=> "AK"
  """
  @spec state_abbr() :: String.t()
  def state_abbr do
    Module.concat(__MODULE__, Faker.mlocale).state_abbr
  end

  @doc """
  Return street address.

  ## Examples

      iex> Faker.Address.street_address()
      #=> "20 Herman Port"
  """
  @spec street_address() :: String.t()
  def street_address do
    "#{building_number()} #{street_name()}"
  end

  @doc """
  Return `street_address/0` or if argument is `true` adds `secondary_address/0`.

  ## Examples

      iex> Faker.Address.street_address(true)
      #=> "6379 Greenholt Turnpike Suite 779"
  """
  @spec street_address(true | any) :: String.t()
  def street_address(true), do: street_address() <> " " <> secondary_address()
  def street_address(_), do: street_address()

  @doc """
  Return street name.

  ## Examples

      iex> Faker.Address.street_name()
      #=> "Derek Center"
  """
  @spec street_name() :: String.t()
  def street_name do
    street_name(Faker.random_between(0, 1))
  end

  defp street_name(0), do: "#{Name.first_name()} #{street_suffix()}"
  defp street_name(1), do: "#{Name.last_name()} #{street_suffix()}"

  @doc """
  Return street suffix.

  ## Examples

      iex> Faker.Address.street_suffix()
      #=> "Rapid"
  """
  @spec street_suffix() :: String.t()
  def street_suffix do
    Module.concat(__MODULE__, Faker.mlocale).street_suffix
  end

  @doc """
  Return time zone.

  ## Examples

      iex> Faker.Address.time_zone()
      #=> "Asia/Novosibirsk"
  """
  @spec time_zone() :: String.t()
  def time_zone do
    Module.concat(__MODULE__, Faker.mlocale).time_zone
  end

  @doc """
  Return random postcode.

  ## Examples

      iex> Faker.Address.zip()
      #=> "84084-8276"
  """
  @spec zip() :: String.t()
  defdelegate zip, to: __MODULE__, as: :zip_code

  @doc """
  Return random postcode.

  ## Examples

      iex> Faker.Address.zip_code()
      #=> "24838"
  """
  @spec zip_code() :: String.t()
  def zip_code do
    Module.concat(__MODULE__, Faker.mlocale).zip_code
  end
end
