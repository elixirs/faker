defmodule Faker.Person.PtBr do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for name data in Brazilian Portuguese
  """

  @doc """
  Returns a complete name (may include a suffix/prefix or both)

  ## Examples

      iex> Faker.Person.PtBr.name()
      "Dr. Hélio Mendes Neto"
      iex> Faker.Person.PtBr.name()
      "Bernardo Mangueira"
      iex> Faker.Person.PtBr.name()
      "Sr. Arthur Santana Neto"
      iex> Faker.Person.PtBr.name()
      "João Gabriel Resende"
  """
  @spec name() :: String.t()
  def name, do: name(Faker.random_between(0, 12))
  defp name(0), do: "#{male_prefix()} #{male_first_name()} #{last_name()} #{suffix()}"
  defp name(1), do: "#{male_prefix()} #{male_first_name()} #{last_name()}"
  defp name(2), do: "#{male_first_name()} #{last_name()} #{suffix()}"
  defp name(3), do: "#{male_first_name()} #{last_name()}"

  defp name(i) when i == 4 or i == 5,
    do: "#{female_prefix()} #{female_first_name()} #{last_name()}"

  defp name(i) when i == 6 or i == 7,
    do: "#{female_first_name()} #{last_name()}"

  defp name(n) when is_integer(n) do
    "#{first_name()} #{last_name()}"
  end

  @doc """
  Returns a random first name

  ## Examples

      iex> Faker.Person.PtBr.first_name()
      "Luiz Henrique"
      iex> Faker.Person.PtBr.first_name()
      "Suélen"
      iex> Faker.Person.PtBr.first_name()
      "Arthur Henrique"
      iex> Faker.Person.PtBr.first_name()
      "Bernardo"
  """
  @spec first_name() :: String.t()
  def first_name(), do: first_name(Faker.random_between(0, 1))
  defp first_name(0), do: "#{male_first_name()}"
  defp first_name(1), do: "#{female_first_name()}"

  @doc """
  Returns a random male first name

  ## Examples

      iex> Faker.Person.PtBr.male_first_name()
      "Bruno"
      iex> Faker.Person.PtBr.male_first_name()
      "Luiz Henrique"
      iex> Faker.Person.PtBr.male_first_name()
      "Hélio"
      iex> Faker.Person.PtBr.male_first_name()
      "Mathias"
  """
  @spec male_first_name() :: String.t()
  sampler(:male_first_name, [
    "Alessandro",
    "Alexandre",
    "Antônio",
    "Arthur",
    "Benício",
    "Benjamin",
    "Bernardo",
    "Breno",
    "Bryan",
    "Caio",
    "Carlos",
    "César",
    "Daniel",
    "Danilo",
    "Davi",
    "Deneval",
    "Eduardo",
    "Elísio",
    "Emanuel",
    "Emanuelly",
    "Enrico",
    "Enzo",
    "Fabiano",
    "Fábio",
    "Fabrício",
    "Feliciano",
    "Felipe",
    "Félix",
    "Francisco",
    "Frederico",
    "Gabriel",
    "Gúbio",
    "Guilherme",
    "Gustavo",
    "Heitor",
    "Hélio",
    "Henrique",
    "Hugo",
    "Ígor",
    "Isaac",
    "João",
    "Joaquim",
    "Júlio",
    "Kléber",
    "Leonardo",
    "Lorenzo",
    "Lucas",
    "Lucca",
    "Marcelo",
    "Márcio",
    "Marcos",
    "Matheus",
    "Miguel",
    "Murilo",
    "Nataniel",
    "Nicolas",
    "Nicole",
    "Norberto",
    "Pablo",
    "Paulo",
    "Pedro",
    "Pietro",
    "Rafael",
    "Raul",
    "Ricardo",
    "Roberto",
    "Salvador",
    "Samuel",
    "Silas",
    "Sirineu",
    "Tertuliano",
    "Theo",
    "Thiago",
    "Thomas",
    "Vicente",
    "Víctor",
    "Vinicius",
    "Vitor",
    "Warley",
    "Washington",
    "Yago",
    "Yango",
    "Yuri",
    "André",
    "Anthony",
    "Arthur Gabriel",
    "Arthur Henrique",
    "Arthur Miguel",
    "Augusto",
    "Bento",
    "Bruno",
    "Carlos Eduardo",
    "Davi Lucas",
    "Davi Lucca",
    "Davi Luiz",
    "Davi Miguel",
    "Enzo Gabriel",
    "Enzo Miguel",
    "Erick",
    "Fernando",
    "Gael",
    "Henry",
    "Ian",
    "Igor",
    "Joao",
    "João Gabriel",
    "João Guilherme",
    "João Lucas",
    "João Lucas",
    "João Miguel",
    "João Pedro",
    "João Vitor",
    "José",
    "Kaique",
    "Kauê",
    "Levi",
    "Luan",
    "Lucas Gabriel",
    "Luiz",
    "Luiz Felipe",
    "Luiz Gustavo",
    "Luiz Henrique",
    "Luiz Miguel",
    "Luiz Otávio",
    "Mathias",
    "Nathan",
    "Noah",
    "Oliver",
    "Otávio",
    "Pedro Henrique",
    "Pedro Henrique",
    "Pedro Lucas",
    "Pedro Miguel",
    "Rodrigo",
    "Ruan",
    "Ryan",
    "Tiago",
    "Tomás",
    "Vinícius",
    "Vitor Hugo"
  ])

  @doc """
  Returns a random female first name

  ## Examples

      iex> Faker.Person.PtBr.female_first_name()
      "Maria Helena"
      iex> Faker.Person.PtBr.female_first_name()
      "Alessandra"
      iex> Faker.Person.PtBr.female_first_name()
      "Ayla"
      iex> Faker.Person.PtBr.female_first_name()
      "Suélen"
  """

  @spec female_first_name() :: String.t()
  sampler(:female_first_name, [
    "Alice",
    "Alícia",
    "Aline",
    "Amanda",
    "Ana",
    "Beatriz",
    "Bianca",
    "Bruna",
    "Carla",
    "Catarina",
    "Cauã",
    "Cecília",
    "Célia",
    "Clara",
    "Dalila",
    "Djalma",
    "Eduarda",
    "Esther",
    "Fabrícia",
    "Felícia",
    "Fernanda",
    "Gabriela",
    "Giovanna",
    "Helena",
    "Heloísa",
    "Isabel",
    "Isabela",
    "Isabella",
    "Isabelly",
    "Isadora",
    "Isis",
    "Janaína",
    "Joana",
    "Júlia",
    "Karla",
    "Ladislau",
    "Lara",
    "Larissa",
    "Laura",
    "Lavínia",
    "Letícia",
    "Lívia",
    "Lorena",
    "Lorraine",
    "Luiza",
    "Manuela",
    "Marcela",
    "Márcia",
    "Margarida",
    "Maria",
    "Mariana",
    "Marina",
    "Marli",
    "Meire",
    "Melissa",
    "Mércia",
    "Morgana",
    "Natália",
    "Núbia",
    "Ofélia",
    "Paula",
    "Rafaela",
    "Rebeca",
    "Roberta",
    "Sara",
    "Sarah",
    "Sílvia",
    "Sophia",
    "Suélen",
    "Talita",
    "Valentina",
    "Vitória",
    "Yasmin",
    "Adriana",
    "Agatha",
    "Alessandra",
    "Allana",
    "Ana Beatriz",
    "Ana Cecília",
    "Ana Clara",
    "Ana Júlia",
    "Ana Laura",
    "Ana Lívia",
    "Ana Luiza",
    "Ana Sophia",
    "Ana Vitória",
    "Antonella",
    "Antonia",
    "Aurora",
    "Ayla",
    "Bárbara",
    "Calebe",
    "Camila",
    "Carolina",
    "Clarice",
    "Elisa",
    "Eloah",
    "Emilly",
    "Francisca",
    "Gabrielly",
    "Giulia",
    "Juliana",
    "Laís",
    "Liz",
    "Louise",
    "Luana",
    "Luna",
    "Maitê",
    "Malu",
    "Marcia",
    "Maria Alice",
    "Maria Cecília",
    "Maria Clara",
    "Maria Eduarda",
    "Maria Fernanda",
    "Maria Flor",
    "Maria Helena",
    "Maria Isis",
    "Maria Júlia",
    "Maria Laura",
    "Maria Luiza",
    "Maria Sophia",
    "Maria Valentina",
    "Maria Vitória",
    "Mariah",
    "Maya",
    "Milena",
    "Mirella",
    "Olívia",
    "Patricia",
    "Pérola",
    "Pietra",
    "Sophie",
    "Stella"
  ])

  @doc """
  Returns a random last name

  ## Examples

      iex> Faker.Person.PtBr.last_name()
      "Sá"
      iex> Faker.Person.PtBr.last_name()
      "das Neves"
      iex> Faker.Person.PtBr.last_name()
      "Castelo"
      iex> Faker.Person.PtBr.last_name()
      "Mendes"
  """
  @spec last_name() :: String.t()
  sampler(:last_name, [
    "Aguiar",
    "Albuquerque",
    "Almada",
    "Almeida",
    "Álvares",
    "Alves",
    "Ambrósio",
    "Amoreira",
    "Antena",
    "Antunes",
    "Aparício",
    "Aragão",
    "Arantes",
    "Araújo",
    "Aroeira",
    "Arriaga",
    "Assumpção",
    "Banheira",
    "Barata",
    "Barbosa",
    "Barreira",
    "Barreto",
    "Barros",
    "Barroso",
    "Batista",
    "Beltrão",
    "Bentes",
    "Bernardes",
    "Bittencourt",
    "Bomdia",
    "Bonfim",
    "Bouças",
    "Braga",
    "Brites",
    "Brum",
    "Bulhões",
    "Cabreira",
    "Cachoeira",
    "Caldas",
    "Caldeira",
    "Camacho",
    "Campos",
    "Cardoso",
    "Carneiro",
    "Carreira",
    "Carvalheira",
    "Carvalho",
    "Caseira",
    "Casqueira",
    "Castanheira",
    "Castanho",
    "Castelo",
    "Castro",
    "Cavalcanti",
    "Cerqueira",
    "Chaves",
    "Conceição",
    "Coqueiro",
    "Corrêa",
    "Corte",
    "Costa",
    "Coutinho",
    "Crespo",
    "Cruz",
    "Custódio",
    "da Aldeia",
    "da Bandeira",
    "da Barra",
    "da Barranca",
    "da Conceição",
    "da Costa",
    "da Cruz",
    "da Cunha",
    "da Fonseca",
    "da Fontoura",
    "da Fronteira",
    "da Gama",
    "da Luz",
    "da Madureira",
    "da Maia",
    "da Mata",
    "da Mota",
    "da Nóbrega",
    "da Paz",
    "da Penha",
    "da Rocha",
    "da Rosa",
    "da Silva",
    "da Silveira",
    "da Terra",
    "da Veiga",
    "Dantas",
    "das Neves",
    "Datena",
    "de Assunção",
    "de Borba",
    "de Lara",
    "de Lins",
    "de Oliveira",
    "de Quadros",
    "de Sá",
    "Dias",
    "Diegues",
    "do Prado",
    "Domingues",
    "Dorneles",
    "dos Reis",
    "Duarte",
    "Espinheira",
    "Espinhosa",
    "Esteves",
    "Farias",
    "Fernandes",
    "Ferraço",
    "Ferreira",
    "Figueira",
    "Filgueira",
    "Fogaça",
    "Fontes",
    "Fontinhas",
    "Franco",
    "Freitas",
    "Gabeira",
    "Galego",
    "Galvão",
    "Garcês",
    "Garcez",
    "Gentil",
    "Geraldes",
    "Godinho",
    "Godins",
    "Gomes",
    "Gomide",
    "Gonçalves",
    "Goulart",
    "Grotas",
    "Guedes",
    "Guterres",
    "Henriques",
    "Hermingues",
    "Hernandes",
    "Jaques",
    "Jesus",
    "Junqueira",
    "Laranjeira",
    "Leiria",
    "Lessa",
    "Lima",
    "Limeira",
    "Lobos",
    "Longuinho",
    "Lopes",
    "Louzada",
    "Macedo",
    "Macieira",
    "Madeira",
    "Mangueira",
    "Marcondes",
    "Marins",
    "Marques",
    "Martim",
    "Martins",
    "Matoso",
    "Meira",
    "Meireles",
    "Melo",
    "Mendanha",
    "Mendes",
    "Menendes",
    "Modesto",
    "Moniz",
    "Monteira",
    "Monteiro",
    "Moraes",
    "Morais",
    "Moreira",
    "Moreno",
    "Moura",
    "Munhoz",
    "Muniz",
    "Nascimento",
    "Negrão",
    "Neves",
    "Nogueira",
    "Novaes",
    "Nunes",
    "Oliveira",
    "Ordonhes",
    "Ornelas",
    "Ouriques",
    "Paes",
    "Paiva",
    "Palhares",
    "Palmeira",
    "Parreira",
    "Passarinho",
    "Pedroso",
    "Peixoto",
    "Pereira",
    "Peres",
    "Pimenta",
    "Pinheira",
    "Pinto",
    "Pires",
    "Porteira",
    "Porto",
    "Quaresma",
    "Quarteira",
    "Raia",
    "Ramalho",
    "Rameira",
    "Ramires",
    "Ramos",
    "Rebouças",
    "Rêgo",
    "Regueira",
    "Reis",
    "Resende",
    "Rezende",
    "Ribas",
    "Ribeira",
    "Ribeiro",
    "Rios",
    "Rocha",
    "Rodrigues",
    "Rolim",
    "Roriz",
    "Roseira",
    "Sá",
    "Sais",
    "Sales",
    "Sanches",
    "Santana",
    "Santos",
    "Saraiva",
    "Silva",
    "Silveira",
    "Simão",
    "Simões",
    "Siqueira",
    "Siqueiro",
    "Soares",
    "Soeira",
    "Solimões",
    "Souza",
    "Tavares",
    "Taveira",
    "Teixeira",
    "Teles",
    "Vasques",
    "Velasques",
    "Veles",
    "Veloso",
    "Viana",
    "Vidal",
    "Videira",
    "Vieira",
    "Vimaranes",
    "Viveiros",
    "Xavier",
    "Ximenes"
  ])

  @doc """
  Returns a random male prefix

  ## Examples

      iex> Faker.Person.PtBr.male_prefix()
      "Sr."
      iex> Faker.Person.PtBr.male_prefix()
      "Dr."
  """
  @spec male_prefix() :: String.t()
  sampler(:male_prefix, [
    "Sr.",
    "Dr."
  ])

  @doc """
  Returns a random female_prefix

  ## Examples

      iex> Faker.Person.PtBr.female_prefix()
      "Sra."
      iex> Faker.Person.PtBr.female_prefix()
      "Dra."
  """
  @spec female_prefix() :: String.t()
  sampler(:female_prefix, [
    "Sra.",
    "Srta.",
    "Dra."
  ])

  @doc """
  Returns a random suffix

  ## Examples

      iex> Faker.Person.PtBr.suffix()
      "Jr."
      iex> Faker.Person.PtBr.suffix()
      "Filho"
      iex> Faker.Person.PtBr.suffix()
      "Jr."
      iex> Faker.Person.PtBr.suffix()
      "Filho"
  """
  @spec suffix() :: String.t()
  sampler(:suffix, [
    "Jr.",
    "Neto",
    "Filho"
  ])
end
