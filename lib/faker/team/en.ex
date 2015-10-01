defmodule Faker.Team.En do 
  @moduledoc """
  Functions for generating team related data in English
  """

  @doc """
  Returns a string of the form [state] [creature]
  """
  @spec name() :: String.t
  def name, do: "#{Faker.Address.state} #{creature}"

  @data ["ants", "banshees", "bats", "bears", "bees", "birds", "black cats", "buffalo", "cats", "cattle", "chickens", "chimeras", "conspirators", "crows", "dogs", "dolphins", "dragons", "druids", "ducks", "dwarves", "elephants", "elves", "enchanters", "exorcists", "fishes", "foes", "foxes", "frogs", "geese", "ghosts", "giants", "gnomes", "goats", "goblins", "gooses", "griffins", "horses", "kangaroos", "lions", "lycanthropes", "monkeys", "nemesis", "ogres", "oracles", "owls", "oxen", "penguins", "people", "pigs", "prophets", "rabbits", "sheep", "sons", "sorcerors", "spiders", "spirits", "tigers", "vampires", "vixens", "warlocks", "werewolves", "whales", "witches", "wolves", "worshipers", "zebras", "zombies"]
  @data_count Enum.count(@data)
  @doc """
  Returns a random creature name
  """
  @spec creature() :: String.t
  def creature do 
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end
end
