defmodule Faker.Pokemon.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for Pokemon names in English
  """

  @doc """
  Returns a Pokemon name
  """
  @spec name() :: String.t
  sampler :name, ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Ekans", "Arbok", "Pikachu", "Raichu", "Sandshrew", "Sandslash", "Nidoran", "Nidorina", "Nidoqueen", "Nidoran", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfetch'd", "Doduo", "Dodrio", "Seel", "Dewgong", "Grimer", "Muk", "Shellder", "Cloyster", "Gastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan", "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", "Chansey", "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Mr.", "Scyther", "Jynx", "Electabuzz", "Magmar", "Pinsir", "Tauros", "Magikarp", "Gyarados", "Lapras", "Ditto", "Eevee", "Vaporeon", "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar", "Kabuto", "Kabutops", "Aerodactyl", "Snorlax", "Articuno", "Zapdos", "Moltres", "Dratini", "Dragonair", "Dragonite", "Mewtwo"]

  @doc """
  Returns a location from Pokemon universe
  """
  @spec location() :: String.t
  sampler :location, ["Accumula Town", "Ambrette Town", "Anistar City", "Anville Town", "Aquacorde Town", "Aspertia City", "Azalea Town", "Black City", "Blackthorn City", "Camphrier Town", "Canalave City", "Castelia City", "Celadon City", "Celestic Town", "Cerulean City", "Cherrygrove City", "Cianwood City", "Cinnabar Island", "Coumarine City", "Couriway Town", "Cyllage City", "Dendemille Town", "Dewford Town", "Driftveil City", "Ecruteak City", "Eterna City", "Ever Grande City", "Fallarbor Town", "Fight Area", "Five Island", "Floaroma Town", "Floccesy Town", "Fortree City", "Four Island", "Frontier Access", "Fuchsia City", "Geosenge Town", "Goldenrod City", "Hearthome City", "Humilau City", "Icirrus City", "Jubilife City", "Kiloude City", "Lacunosa Town", "Lavaridge Town", "Lavender Town", "Laverre City", "Lentimas Town", "Littleroot Town", "Lilycove City", "Lumiose City", "Mahogany Town", "Mauville City", "Mistralton City", "Mossdeep City", "Nacrene City", "New Bark Town", "Nimbasa City", "Nuvema Town", "Oldale Town", "Olivine City", "One Island", "Opelucid City", "Oreburgh City", "Pacifidlog Town", "Pallet Town", "Pastoria City", "Petalburg City", "Pewter City", "Resort Area", "Rustboro City", "Safari Zone Gate", "Saffron City", "Sandgem Town", "Santalune City", "Striaton City", "Seven Island", "Shalour City", "Six Island", "Slateport City", "Snowbelle City", "Snowpoint City", "Solaceon Town", "Sootopolis City", "Sunyshore City", "Survival Area", "Three Island", "Twinleaf Town", "Two Island", "Undella Town", "Vaniville Town", "Veilstone City", "Verdanturf Town", "Vermilion City", "Violet City", "Virbank City", "Viridian City", "White Forest"]
end
