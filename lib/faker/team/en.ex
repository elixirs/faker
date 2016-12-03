defmodule Faker.Team.En do
  import Faker, only: [sampler: 2]
  alias Faker.Address

  @moduledoc """
  Functions for generating team related data in English
  """

  @doc """
  Returns a string of the form [state] [creature]
  """
  @spec name() :: String.t
  def name, do: "#{Address.state} #{creature()}"

  @doc """
  Returns a random creature name
  """
  @spec creature() :: String.t
  sampler :creature, ["ants", "banshees", "bats", "bears", "bees", "birds", "black cats", "buffalo", "cats", "cattle", "chickens", "chimeras", "conspirators", "crows", "dogs", "dolphins", "dragons", "druids", "ducks", "dwarves", "elephants", "elves", "enchanters", "exorcists", "fishes", "foes", "foxes", "frogs", "geese", "ghosts", "giants", "gnomes", "goats", "goblins", "gooses", "griffins", "horses", "kangaroos", "lions", "lycanthropes", "monkeys", "nemesis", "ogres", "oracles", "owls", "oxen", "penguins", "people", "pigs", "prophets", "rabbits", "sheep", "sons", "sorcerors", "spiders", "spirits", "tigers", "vampires", "vixens", "warlocks", "werewolves", "whales", "witches", "wolves", "worshipers", "zebras", "zombies"]
end
