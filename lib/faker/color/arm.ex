defmodule Faker.Color.Arm do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating color data in Armenian
  """

  @doc """
  Returns a random color name.

  ## Examples

      iex> Faker.Color.Arm.name()
      "մոխրագույն"
      iex> Faker.Color.Arm.name()
      "կանաչ"
      iex> Faker.Color.Arm.name()
      "երկնագույն"
      iex> Faker.Color.Arm.name()
      "մանուշակագույն"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "կարմիր",
    "կանաչ",
    "կապույտ",
    "դեղին",
    "մանուշակագույն",
    "շագանակագույն",
    "սպիտակ",
    "սև",
    "նարնջագույն",
    "վարդագույն",
    "մոխրագույն",
    "մանուշակագույն",
    "փիրուզագույն",
    "մուգ մանուշակագույն",
    "դեղնավարդագույն",
    "երկնագույն",
    "դեղնականաչ",
    "թուխ",
    "ոսկեգույն",
    "դարչնագույն"
  ])
end
