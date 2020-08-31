defmodule Faker.Aws.En do
    import Faker, only: [sampler: 2]

    @moduledoc """
    Functions for generating Aws information in English
    """

    @doc """
    Returns a random region from the available Aws regions

    ## Examples

        iex> Faker.Aws.En.region()
        "Asia Pacific (Tokyo)"
        iex> Faker.Aws.En.region()
        "US East (Ohio)"
        iex> Faker.Aws.En.region()
        "Europe (Milan)"
        iex> Faker.Aws.En.region()
        "Africa (Cape Town)"
    """

    @spec region() :: String.t()
    sampler(:region, [
        "US East (N. Virginia)",
        "US East (Ohio)",
        "US West (N. California)",
        "US West (Oregon)",
        "Africa (Cape Town)",
        "Asia Pacific (Hong Kong)",
        "Asia Pacific (Mumbai)",
        "Asia Pacific (Seoul)",
        "Asia Pacific (Singapore)",
        "Asia Pacific (Sydney)",
        "Asia Pacific (Tokyo)",
        "Canada (Central)",
        "Europe (Frankfurt)",
        "Europe (Ireland)",
        "Europe (London)",
        "Europe (Milan)",
        "Europe (Paris)",
        "Europe (Stockholm)",
        "Middle East (Bahrain)",
        "South America (São Paulo)"
    ])

end