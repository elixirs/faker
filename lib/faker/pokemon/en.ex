defmodule Faker.Pokemon.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for Pokemon names in English
  """

  @doc """
  Returns a Pokemon name

  ## Examples

      iex> Faker.Pokemon.En.name()
      "Fraxure"
      iex> Faker.Pokemon.En.name()
      "Shellos"
      iex> Faker.Pokemon.En.name()
      "Ambipom"
      iex> Faker.Pokemon.En.name()
      "Forretress"
  """
  @spec name() :: String.t()
  sampler(:name, [
    "Bulbasaur",
    "Ivysaur",
    "Venusaur",
    "Charmander",
    "Charmeleon",
    "Charizard",
    "Squirtle",
    "Wartortle",
    "Blastoise",
    "Caterpie",
    "Metapod",
    "Butterfree",
    "Weedle",
    "Kakuna",
    "Beedrill",
    "Pidgey",
    "Pidgeotto",
    "Pidgeot",
    "Rattata",
    "Raticate",
    "Spearow",
    "Fearow",
    "Ekans",
    "Arbok",
    "Pikachu",
    "Raichu",
    "Sandshrew",
    "Sandslash",
    "Nidoran",
    "Nidorina",
    "Nidoqueen",
    "Nidoran",
    "Nidorino",
    "Nidoking",
    "Clefairy",
    "Clefable",
    "Vulpix",
    "Ninetales",
    "Jigglypuff",
    "Wigglytuff",
    "Zubat",
    "Golbat",
    "Oddish",
    "Gloom",
    "Vileplume",
    "Paras",
    "Parasect",
    "Venonat",
    "Venomoth",
    "Diglett",
    "Dugtrio",
    "Meowth",
    "Persian",
    "Psyduck",
    "Golduck",
    "Mankey",
    "Primeape",
    "Growlithe",
    "Arcanine",
    "Poliwag",
    "Poliwhirl",
    "Poliwrath",
    "Abra",
    "Kadabra",
    "Alakazam",
    "Machop",
    "Machoke",
    "Machamp",
    "Bellsprout",
    "Weepinbell",
    "Victreebel",
    "Tentacool",
    "Tentacruel",
    "Geodude",
    "Graveler",
    "Golem",
    "Ponyta",
    "Rapidash",
    "Slowpoke",
    "Slowbro",
    "Magnemite",
    "Magneton",
    "Farfetch'd",
    "Doduo",
    "Dodrio",
    "Seel",
    "Dewgong",
    "Grimer",
    "Muk",
    "Shellder",
    "Cloyster",
    "Gastly",
    "Haunter",
    "Gengar",
    "Onix",
    "Drowzee",
    "Hypno",
    "Krabby",
    "Kingler",
    "Voltorb",
    "Electrode",
    "Exeggcute",
    "Exeggutor",
    "Cubone",
    "Marowak",
    "Hitmonlee",
    "Hitmonchan",
    "Lickitung",
    "Koffing",
    "Weezing",
    "Rhyhorn",
    "Rhydon",
    "Chansey",
    "Tangela",
    "Kangaskhan",
    "Horsea",
    "Seadra",
    "Goldeen",
    "Seaking",
    "Staryu",
    "Starmie",
    "Mr. Mime",
    "Scyther",
    "Jynx",
    "Electabuzz",
    "Magmar",
    "Pinsir",
    "Tauros",
    "Magikarp",
    "Gyarados",
    "Lapras",
    "Ditto",
    "Eevee",
    "Vaporeon",
    "Jolteon",
    "Flareon",
    "Porygon",
    "Omanyte",
    "Omastar",
    "Kabuto",
    "Kabutops",
    "Aerodactyl",
    "Snorlax",
    "Articuno",
    "Zapdos",
    "Moltres",
    "Dratini",
    "Dragonair",
    "Dragonite",
    "Mewtwo",
    "Mew",
    "Chikorita",
    "Bayleef",
    "Meganium",
    "Cyndaquil",
    "Quilava",
    "Typhlosion",
    "Totodile",
    "Croconaw",
    "Feraligatr",
    "Sentret",
    "Furret",
    "Hoothoot",
    "Noctowl",
    "Ledyba",
    "Ledian",
    "Spinarak",
    "Ariados",
    "Crobat",
    "Chinchou",
    "Lanturn",
    "Pichu",
    "Cleffa",
    "Igglybuff",
    "Togepi",
    "Togetic",
    "Natu",
    "Xatu",
    "Mareep",
    "Flaaffy",
    "Ampharos",
    "Bellossom",
    "Marill",
    "Azumarill",
    "Sudowoodo",
    "Politoed",
    "Hoppip",
    "Skiploom",
    "Jumpluff",
    "Aipom",
    "Sunkern",
    "Sunflora",
    "Yanma",
    "Wooper",
    "Quagsire",
    "Espeon",
    "Umbreon",
    "Murkrow",
    "Slowking",
    "Misdreavus",
    "Unown",
    "Wobbuffet",
    "Girafarig",
    "Pineco",
    "Forretress",
    "Dunsparce",
    "Gligar",
    "Steelix",
    "Snubbull",
    "Granbull",
    "Qwilfish",
    "Scizor",
    "Shuckle",
    "Heracross",
    "Sneasel",
    "Teddiursa",
    "Ursaring",
    "Slugma",
    "Magcargo",
    "Swinub",
    "Piloswine",
    "Corsola",
    "Remoraid",
    "Octillery",
    "Delibird",
    "Mantine",
    "Skarmory",
    "Houndour",
    "Houndoom",
    "Kingdra",
    "Phanpy",
    "Donphan",
    "Porygon2",
    "Stantler",
    "Smeargle",
    "Tyrogue",
    "Hitmontop",
    "Smoochum",
    "Elekid",
    "Magby",
    "Miltank",
    "Blissey",
    "Raikou",
    "Entei",
    "Suicune",
    "Larvitar",
    "Pupitar",
    "Tyranitar",
    "Lugia",
    "Ho-oh",
    "Celebi",
    "Treecko",
    "Grovyle",
    "Sceptile",
    "Torchic",
    "Combusken",
    "Blaziken",
    "Mudkip",
    "Marshtomp",
    "Swampert",
    "Poochyena",
    "Mightyena",
    "Zigzagoon",
    "Linoone",
    "Wurmple",
    "Silcoon",
    "Beautifly",
    "Cascoon",
    "Dustox",
    "Lotad",
    "Lombre",
    "Ludicolo",
    "Seedot",
    "Nuzleaf",
    "Shiftry",
    "Taillow",
    "Swellow",
    "Wingull",
    "Pelipper",
    "Ralts",
    "Kirlia",
    "Gardevoir",
    "Surskit",
    "Masquerain",
    "Shroomish",
    "Breloom",
    "Slakoth",
    "Vigoroth",
    "Slaking",
    "Nincada",
    "Ninjask",
    "Shedinja",
    "Whismur",
    "Loudred",
    "Exploud",
    "Makuhita",
    "Hariyama",
    "Azurill",
    "Nosepass",
    "Skitty",
    "Delcatty",
    "Sableye",
    "Mawile",
    "Aron",
    "Lairon",
    "Aggron",
    "Meditite",
    "Medicham",
    "Electrike",
    "Manectric",
    "Plusle",
    "Minun",
    "Volbeat",
    "Illumise",
    "Roselia",
    "Gulpin",
    "Swalot",
    "Carvanha",
    "Sharpedo",
    "Wailmer",
    "Wailord",
    "Numel",
    "Camerupt",
    "Torkoal",
    "Spoink",
    "Grumpig",
    "Spinda",
    "Trapinch",
    "Vibrava",
    "Flygon",
    "Cacnea",
    "Cacturne",
    "Swablu",
    "Altaria",
    "Zangoose",
    "Seviper",
    "Lunatone",
    "Solrock",
    "Barboach",
    "Whiscash",
    "Corphish",
    "Crawdaunt",
    "Baltoy",
    "Claydol",
    "Lileep",
    "Cradily",
    "Anorith",
    "Armaldo",
    "Feebas",
    "Milotic",
    "Castform",
    "Kecleon",
    "Shuppet",
    "Banette",
    "Duskull",
    "Dusclops",
    "Tropius",
    "Chimecho",
    "Absol",
    "Wynaut",
    "Snorunt",
    "Glalie",
    "Spheal",
    "Sealeo",
    "Walrein",
    "Clamperl",
    "Huntail",
    "Gorebyss",
    "Relicanth",
    "Luvdisc",
    "Bagon",
    "Shelgon",
    "Salamence",
    "Beldum",
    "Metang",
    "Metagross",
    "Regirock",
    "Regice",
    "Registeel",
    "Latias",
    "Latios",
    "Kyogre",
    "Groudon",
    "Rayquaza",
    "Jirachi",
    "Deoxys-normal",
    "Turtwig",
    "Grotle",
    "Torterra",
    "Chimchar",
    "Monferno",
    "Infernape",
    "Piplup",
    "Prinplup",
    "Empoleon",
    "Starly",
    "Staravia",
    "Staraptor",
    "Bidoof",
    "Bibarel",
    "Kricketot",
    "Kricketune",
    "Shinx",
    "Luxio",
    "Luxray",
    "Budew",
    "Roserade",
    "Cranidos",
    "Rampardos",
    "Shieldon",
    "Bastiodon",
    "Burmy",
    "Wormadam-plant",
    "Mothim",
    "Combee",
    "Vespiquen",
    "Pachirisu",
    "Buizel",
    "Floatzel",
    "Cherubi",
    "Cherrim",
    "Shellos",
    "Gastrodon",
    "Ambipom",
    "Drifloon",
    "Drifblim",
    "Buneary",
    "Lopunny",
    "Mismagius",
    "Honchkrow",
    "Glameow",
    "Purugly",
    "Chingling",
    "Stunky",
    "Skuntank",
    "Bronzor",
    "Bronzong",
    "Bonsly",
    "Mime-jr",
    "Happiny",
    "Chatot",
    "Spiritomb",
    "Gible",
    "Gabite",
    "Garchomp",
    "Munchlax",
    "Riolu",
    "Lucario",
    "Hippopotas",
    "Hippowdon",
    "Skorupi",
    "Drapion",
    "Croagunk",
    "Toxicroak",
    "Carnivine",
    "Finneon",
    "Lumineon",
    "Mantyke",
    "Snover",
    "Abomasnow",
    "Weavile",
    "Magnezone",
    "Lickilicky",
    "Rhyperior",
    "Tangrowth",
    "Electivire",
    "Magmortar",
    "Togekiss",
    "Yanmega",
    "Leafeon",
    "Glaceon",
    "Gliscor",
    "Mamoswine",
    "Porygon-z",
    "Gallade",
    "Probopass",
    "Dusknoir",
    "Froslass",
    "Rotom",
    "Uxie",
    "Mesprit",
    "Azelf",
    "Dialga",
    "Palkia",
    "Heatran",
    "Regigigas",
    "Giratina-altered",
    "Cresselia",
    "Phione",
    "Manaphy",
    "Darkrai",
    "Shaymin-land",
    "Arceus",
    "Victini",
    "Snivy",
    "Servine",
    "Serperior",
    "Tepig",
    "Pignite",
    "Emboar",
    "Oshawott",
    "Dewott",
    "Samurott",
    "Patrat",
    "Watchog",
    "Lillipup",
    "Herdier",
    "Stoutland",
    "Purrloin",
    "Liepard",
    "Pansage",
    "Simisage",
    "Pansear",
    "Simisear",
    "Panpour",
    "Simipour",
    "Munna",
    "Musharna",
    "Pidove",
    "Tranquill",
    "Unfezant",
    "Blitzle",
    "Zebstrika",
    "Roggenrola",
    "Boldore",
    "Gigalith",
    "Woobat",
    "Swoobat",
    "Drilbur",
    "Excadrill",
    "Audino",
    "Timburr",
    "Gurdurr",
    "Conkeldurr",
    "Tympole",
    "Palpitoad",
    "Seismitoad",
    "Throh",
    "Sawk",
    "Sewaddle",
    "Swadloon",
    "Leavanny",
    "Venipede",
    "Whirlipede",
    "Scolipede",
    "Cottonee",
    "Whimsicott",
    "Petilil",
    "Lilligant",
    "Basculin-red-striped",
    "Sandile",
    "Krokorok",
    "Krookodile",
    "Darumaka",
    "Darmanitan-standard",
    "Maractus",
    "Dwebble",
    "Crustle",
    "Scraggy",
    "Scrafty",
    "Sigilyph",
    "Yamask",
    "Cofagrigus",
    "Tirtouga",
    "Carracosta",
    "Archen",
    "Archeops",
    "Trubbish",
    "Garbodor",
    "Zorua",
    "Zoroark",
    "Minccino",
    "Cinccino",
    "Gothita",
    "Gothorita",
    "Gothitelle",
    "Solosis",
    "Duosion",
    "Reuniclus",
    "Ducklett",
    "Swanna",
    "Vanillite",
    "Vanillish",
    "Vanilluxe",
    "Deerling",
    "Sawsbuck",
    "Emolga",
    "Karrablast",
    "Escavalier",
    "Foongus",
    "Amoonguss",
    "Frillish",
    "Jellicent",
    "Alomomola",
    "Joltik",
    "Galvantula",
    "Ferroseed",
    "Ferrothorn",
    "Klink",
    "Klang",
    "Klinklang",
    "Tynamo",
    "Eelektrik",
    "Eelektross",
    "Elgyem",
    "Beheeyem",
    "Litwick",
    "Lampent",
    "Chandelure",
    "Axew",
    "Fraxure",
    "Haxorus",
    "Cubchoo",
    "Beartic",
    "Cryogonal",
    "Shelmet",
    "Accelgor",
    "Stunfisk",
    "Mienfoo",
    "Mienshao",
    "Druddigon",
    "Golett",
    "Golurk",
    "Pawniard",
    "Bisharp",
    "Bouffalant",
    "Rufflet",
    "Braviary",
    "Vullaby",
    "Mandibuzz",
    "Heatmor",
    "Durant",
    "Deino",
    "Zweilous",
    "Hydreigon",
    "Larvesta",
    "Volcarona",
    "Cobalion",
    "Terrakion",
    "Virizion",
    "Tornadus-incarnate",
    "Thundurus-incarnate",
    "Reshiram",
    "Zekrom",
    "Landorus-incarnate",
    "Kyurem",
    "Keldeo-ordinary",
    "Meloetta-aria",
    "Genesect",
    "Chespin",
    "Quilladin",
    "Chesnaught",
    "Fennekin",
    "Braixen",
    "Delphox",
    "Froakie",
    "Frogadier",
    "Greninja",
    "Bunnelby",
    "Diggersby",
    "Fletchling",
    "Fletchinder",
    "Talonflame",
    "Scatterbug",
    "Spewpa",
    "Vivillon",
    "Litleo",
    "Pyroar",
    "Flabebe",
    "Floette",
    "Florges",
    "Skiddo",
    "Gogoat",
    "Pancham",
    "Pangoro",
    "Furfrou",
    "Espurr",
    "Meowstic-male",
    "Honedge",
    "Doublade",
    "Aegislash-shield",
    "Spritzee",
    "Aromatisse",
    "Swirlix",
    "Slurpuff",
    "Inkay",
    "Malamar",
    "Binacle",
    "Barbaracle",
    "Skrelp",
    "Dragalge",
    "Clauncher",
    "Clawitzer",
    "Helioptile",
    "Heliolisk",
    "Tyrunt",
    "Tyrantrum",
    "Amaura",
    "Aurorus",
    "Sylveon",
    "Hawlucha",
    "Dedenne",
    "Carbink",
    "Goomy",
    "Sliggoo",
    "Goodra",
    "Klefki",
    "Phantump",
    "Trevenant",
    "Pumpkaboo-average",
    "Gourgeist-average",
    "Bergmite",
    "Avalugg",
    "Noibat",
    "Noivern",
    "Xerneas",
    "Yveltal",
    "Zygarde",
    "Diancie",
    "Hoopa",
    "Volcanion",
    "Rowlet",
    "Dartrix",
    "Decidueye",
    "Litten",
    "Torracat",
    "Incineroar",
    "Popplio",
    "Brionne",
    "Primarina",
    "Pikipek",
    "Trumbeak",
    "Toucannon",
    "Yungoos",
    "Gumshoos",
    "Grubbin",
    "Charjabug",
    "Vikavolt",
    "Crabrawler",
    "Crabominable",
    "Oricorio-baile",
    "Cutiefly",
    "Ribombee",
    "Rockruff",
    "Lycanroc-midday",
    "Wishiwashi-solo",
    "Mareanie",
    "Toxapex",
    "Mudbray",
    "Mudsdale",
    "Dewpider",
    "Araquanid",
    "Fomantis",
    "Lurantis",
    "Morelull",
    "Shiinotic",
    "Salandit",
    "Salazzle",
    "Stufful",
    "Bewear",
    "Bounsweet",
    "Steenee",
    "Tsareena",
    "Comfey",
    "Oranguru",
    "Passimian",
    "Wimpod",
    "Golisopod",
    "Sandygast",
    "Palossand",
    "Pyukumuku",
    "Type-null",
    "Silvally",
    "Minior-red-meteor",
    "Komala",
    "Turtonator",
    "Togedemaru",
    "Mimikyu-disguised",
    "Bruxish",
    "Drampa",
    "Dhelmise",
    "Jangmo-o",
    "Hakamo-o",
    "Kommo-o",
    "Tapu-koko",
    "Tapu-lele",
    "Tapu-bulu",
    "Tapu-fini",
    "Cosmog",
    "Cosmoem",
    "Solgaleo",
    "Lunala",
    "Nihilego",
    "Buzzwole",
    "Pheromosa",
    "Xurkitree",
    "Celesteela",
    "Kartana",
    "Guzzlord",
    "Necrozma",
    "Magearna",
    "Marshadow",
    "Poipole",
    "Naganadel",
    "Stakataka",
    "Blacephalon",
    "Zeraora",
    "Deoxys-attack",
    "Deoxys-defense",
    "Deoxys-speed",
    "Wormadam-sandy",
    "Wormadam-trash",
    "Shaymin-sky",
    "Giratina-origin",
    "Rotom-heat",
    "Rotom-wash",
    "Rotom-frost",
    "Rotom-fan",
    "Rotom-mow",
    "Castform-sunny",
    "Castform-rainy",
    "Castform-snowy",
    "Basculin-blue-striped",
    "Darmanitan-zen",
    "Meloetta-pirouette",
    "Tornadus-therian",
    "Thundurus-therian",
    "Landorus-therian",
    "Kyurem-black",
    "Kyurem-white",
    "Keldeo-resolute",
    "Meowstic-female",
    "Aegislash-blade",
    "Pumpkaboo-small",
    "Pumpkaboo-large",
    "Pumpkaboo-super",
    "Gourgeist-small",
    "Gourgeist-large",
    "Gourgeist-super",
    "Venusaur-mega",
    "Charizard-mega-x",
    "Charizard-mega-y",
    "Blastoise-mega",
    "Alakazam-mega",
    "Gengar-mega",
    "Kangaskhan-mega",
    "Pinsir-mega",
    "Gyarados-mega",
    "Aerodactyl-mega",
    "Mewtwo-mega-x",
    "Mewtwo-mega-y",
    "Ampharos-mega",
    "Scizor-mega",
    "Heracross-mega",
    "Houndoom-mega",
    "Tyranitar-mega",
    "Blaziken-mega",
    "Gardevoir-mega",
    "Mawile-mega",
    "Aggron-mega",
    "Medicham-mega",
    "Manectric-mega",
    "Banette-mega",
    "Absol-mega",
    "Garchomp-mega",
    "Lucario-mega",
    "Abomasnow-mega",
    "Floette-eternal",
    "Latias-mega",
    "Latios-mega",
    "Swampert-mega",
    "Sceptile-mega",
    "Sableye-mega",
    "Altaria-mega",
    "Gallade-mega",
    "Audino-mega",
    "Sharpedo-mega",
    "Slowbro-mega",
    "Steelix-mega",
    "Pidgeot-mega",
    "Glalie-mega",
    "Diancie-mega",
    "Metagross-mega",
    "Kyogre-primal",
    "Groudon-primal",
    "Rayquaza-mega",
    "Pikachu-rock-star",
    "Pikachu-belle",
    "Pikachu-pop-star",
    "Pikachu-phd",
    "Pikachu-libre",
    "Pikachu-cosplay",
    "Hoopa-unbound",
    "Camerupt-mega",
    "Lopunny-mega",
    "Salamence-mega",
    "Beedrill-mega",
    "Rattata-alola",
    "Raticate-alola",
    "Raticate-totem-alola",
    "Pikachu-original-cap",
    "Pikachu-hoenn-cap",
    "Pikachu-sinnoh-cap",
    "Pikachu-unova-cap",
    "Pikachu-kalos-cap",
    "Pikachu-alola-cap",
    "Raichu-alola",
    "Sandshrew-alola",
    "Sandslash-alola",
    "Vulpix-alola",
    "Ninetales-alola",
    "Diglett-alola",
    "Dugtrio-alola",
    "Meowth-alola",
    "Persian-alola",
    "Geodude-alola",
    "Graveler-alola",
    "Golem-alola",
    "Grimer-alola",
    "Muk-alola",
    "Exeggutor-alola",
    "Marowak-alola",
    "Greninja-battle-bond",
    "Greninja-ash",
    "Zygarde-10",
    "Zygarde-50",
    "Zygarde-complete",
    "Gumshoos-totem",
    "Vikavolt-totem",
    "Oricorio-pom-pom",
    "Oricorio-pau",
    "Oricorio-sensu",
    "Lycanroc-midnight",
    "Wishiwashi-school",
    "Lurantis-totem",
    "Salazzle-totem",
    "Minior-orange-meteor",
    "Minior-yellow-meteor",
    "Minior-green-meteor",
    "Minior-blue-meteor",
    "Minior-indigo-meteor",
    "Minior-violet-meteor",
    "Minior-red",
    "Minior-orange",
    "Minior-yellow",
    "Minior-green",
    "Minior-blue",
    "Minior-indigo",
    "Minior-violet",
    "Mimikyu-busted",
    "Mimikyu-totem-disguised",
    "Mimikyu-totem-busted",
    "Kommo-o-totem",
    "Magearna-original",
    "Pikachu-partner-cap",
    "Marowak-totem",
    "Ribombee-totem",
    "Rockruff-own-tempo",
    "Lycanroc-dusk",
    "Araquanid-totem",
    "Togedemaru-totem",
    "Necrozma-dusk",
    "Necrozma-dawn",
    "Necrozma-ultra",
    "Rillaboom",
    "Cinderace",
    "Inteleon",
    "Corviknight",
    "Eldegoss",
    "Wooloo",
    "Dubwool",
    "Drednaw",
    "Cramorant",
    "Grimmsnarl",
    "Obstagoon",
    "Sirfetch'd",
    "Alcremie",
    "Zarude",
    "Regieleki",
    "Urshifu",
    "Zacian",
    "Zamazenta",
    "Dragapult"
  ])

  @doc """
  Returns a location from Pokemon universe

  ## Examples

      iex> Faker.Pokemon.En.location()
      "Vaniville Town"
      iex> Faker.Pokemon.En.location()
      "Slateport City"
      iex> Faker.Pokemon.En.location()
      "Shalour City"
      iex> Faker.Pokemon.En.location()
      "Solaceon Town"
  """
  @spec location() :: String.t()
  sampler(:location, [
    "Accumula Town",
    "Ambrette Town",
    "Anistar City",
    "Anville Town",
    "Aquacorde Town",
    "Aspertia City",
    "Azalea Town",
    "Black City",
    "Blackthorn City",
    "Camphrier Town",
    "Canalave City",
    "Castelia City",
    "Celadon City",
    "Celestic Town",
    "Cerulean City",
    "Cherrygrove City",
    "Cianwood City",
    "Cinnabar Island",
    "Coumarine City",
    "Couriway Town",
    "Cyllage City",
    "Dendemille Town",
    "Dewford Town",
    "Driftveil City",
    "Ecruteak City",
    "Eterna City",
    "Ever Grande City",
    "Fallarbor Town",
    "Fight Area",
    "Five Island",
    "Floaroma Town",
    "Floccesy Town",
    "Fortree City",
    "Four Island",
    "Frontier Access",
    "Fuchsia City",
    "Geosenge Town",
    "Goldenrod City",
    "Hearthome City",
    "Humilau City",
    "Icirrus City",
    "Jubilife City",
    "Kiloude City",
    "Lacunosa Town",
    "Lavaridge Town",
    "Lavender Town",
    "Laverre City",
    "Lentimas Town",
    "Littleroot Town",
    "Lilycove City",
    "Lumiose City",
    "Mahogany Town",
    "Mauville City",
    "Mistralton City",
    "Mossdeep City",
    "Nacrene City",
    "New Bark Town",
    "Nimbasa City",
    "Nuvema Town",
    "Oldale Town",
    "Olivine City",
    "One Island",
    "Opelucid City",
    "Oreburgh City",
    "Pacifidlog Town",
    "Pallet Town",
    "Pastoria City",
    "Petalburg City",
    "Pewter City",
    "Resort Area",
    "Rustboro City",
    "Safari Zone Gate",
    "Saffron City",
    "Sandgem Town",
    "Santalune City",
    "Striaton City",
    "Seven Island",
    "Shalour City",
    "Six Island",
    "Slateport City",
    "Snowbelle City",
    "Snowpoint City",
    "Solaceon Town",
    "Sootopolis City",
    "Sunyshore City",
    "Survival Area",
    "Three Island",
    "Twinleaf Town",
    "Two Island",
    "Undella Town",
    "Vaniville Town",
    "Veilstone City",
    "Verdanturf Town",
    "Vermilion City",
    "Violet City",
    "Virbank City",
    "Viridian City",
    "White Forest"
  ])
end
