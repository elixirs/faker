defmodule Faker.App do
  import Faker, only: [sampler: 2]

  alias Faker.Name
  alias Faker.Company

  @moduledoc """
  Functions for generating app specific properties.
  """

  @doc """
  Returns a version number.
  """
  @spec version() :: String.t
  def version do
    ["0.#.#", "0.##", "#.##", "#.#", "#.#.#"]
    |> Enum.at(:crypto.rand_uniform(0, 5))
    |> Faker.format
  end

  @doc """
  Returns a SemVer version.

  ## Options:

  * `:allow_pre` - when `true`, a pre-release identifier (e.g.: `-dev`)
    will be appended (default: `false`)
  * `:allow_build` - when `true`, a build identifier (e.g.: `+001`)
    will be appended (default: `false`)
  """
  @spec semver(Keyword.t) :: String.t
  def semver(opts \\ []) do
    allow_pre = Keyword.get(opts, :allow_pre, false)
    allow_build = Keyword.get(opts, :allow_build, false)
    pre =
      ~w(dev alpha beta rc.0 rc.1)
      |> Enum.at(:crypto.rand_uniform(0, 5))

    formats = ["0.#.#", "#.#.#", "#.##.##"]
    formats = if allow_pre, do: formats ++ ["#.#.#-#{pre}"], else: formats
    formats = if allow_build, do: formats ++ ["#.#.#+###"], else: formats
    formats = if allow_pre and allow_build, do: formats ++ ["#.#.#-#{pre}+###"], else: formats

    formats
    |> Enum.at(:crypto.rand_uniform(0, length(formats)))
    |> Faker.format
  end

  @doc """
  Returns an app name.
  """
  @spec name() :: String.t
  sampler :name, ["Redhold", "Treeflex", "Trippledex", "Kanlam", "Bigtax", "Daltfresh", "Toughjoyfax", "Mat Lam Tam", "Otcom", "Tres-Zap", "Y-Solowarm", "Tresom", "Voltsillam", "Biodex", "Greenlam", "Viva", "Matsoft", "Temp", "Zoolab", "Subin", "Rank", "Job", "Stringtough", "Tin", "It", "Home Ing", "Zamit", "Sonsing", "Konklab", "Alpha", "Latlux", "Voyatouch", "Alphazap", "Holdlamis", "Zaam-Dox", "Sub-Ex", "Quo Lux", "Bamity", "Ventosanzap", "Lotstring", "Hatity", "Tempsoft", "Overhold", "Fixflex", "Konklux", "Zontrax", "Tampflex", "Span", "Namfix", "Transcof", "Stim", "Fix San", "Sonair", "Stronghold", "Fintone", "Y-find", "Opela", "Lotlux", "Ronstring", "Zathin", "Duobam", "Keylex"]

  @doc """
  Returns an author name.
  """
  @spec author() :: String.t
  def author do
    author(:crypto.rand_uniform(0, 2))
  end

  defp author(0), do: Name.name
  defp author(1), do: Company.name
end
