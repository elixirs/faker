defmodule Faker.Geohash do
    import Faker.Address, only: [latitude: 0, longitude: 0]
    alias Faker.Address

    @moduledoc """
    Function for generate geohashes.
    """
    @doc """
    Return random geohash.
    """
    @spec geohash() :: String.t
    def geohash do
      import Geohash, only: [encode: 2]
      Geohash.encode(latitude(), longitude(), rand_precision())
    end

    defp rand_precision, do: :rand.uniform(8)
  end
