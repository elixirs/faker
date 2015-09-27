defmodule Faker.App do
  @moduledoc """
  Functions for generating app specific properties.
  """

  @doc """
  Return random version number.
  """
  @spec version() :: String.t
  def version do
    ["0.#.#", "0.##", "#.##", "#.#", "#.#.#"]
    |> Enum.at(:crypto.rand_uniform(0, 5))
    |> Faker.format
  end

  @data ["Redhold", "Treeflex", "Trippledex", "Kanlam", "Bigtax", "Daltfresh", "Toughjoyfax", "Mat Lam Tam", "Otcom", "Tres-Zap", "Y-Solowarm", "Tresom", "Voltsillam", "Biodex", "Greenlam", "Viva", "Matsoft", "Temp", "Zoolab", "Subin", "Rank", "Job", "Stringtough", "Tin", "It", "Home Ing", "Zamit", "Sonsing", "Konklab", "Alpha", "Latlux", "Voyatouch", "Alphazap", "Holdlamis", "Zaam-Dox", "Sub-Ex", "Quo Lux", "Bamity", "Ventosanzap", "Lotstring", "Hatity", "Tempsoft", "Overhold", "Fixflex", "Konklux", "Zontrax", "Tampflex", "Span", "Namfix", "Transcof", "Stim", "Fix San", "Sonair", "Stronghold", "Fintone", "Y-find", "Opela", "Lotlux", "Ronstring", "Zathin", "Duobam", "Keylex"]
  @data_count Enum.count(@data)
  @doc """
  Return app name.
  """
  @spec name() :: String.t
  def name do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @doc """
  Return author name.
  """
  @spec author() :: String.t
  def author do
    author(:crypto.rand_uniform(0, 2))
  end

  defp author(0), do: Faker.Name.name
  defp author(1), do: Faker.Company.name
end
