defmodule Faker.Name.PtBr do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for name data in Brazilian Portuguese
  """

  @doc """
  Returns a complete name (may include a suffix/prefix or both)
  """
  @spec name() :: String.t
  def name, do: name(Faker.random_between(0, 9))
  defp name(0), do: "#{prefix()} #{first_name()} #{last_name()} #{suffix()}"
  defp name(1), do: "#{prefix()} #{first_name()} #{last_name()}"
  defp name(2), do: "#{first_name()} #{last_name()} #{suffix()}"
  defp name(n) when is_integer(n) do
    "#{first_name()} #{last_name()}"
  end

  @doc """
  Returns a random first name
  """
  @spec first_name() :: String.t
  sampler :first_name, ["Alessandro", "Alexandre", "Alice", "Alícia", "Aline", "Amanda", "Ana", "Antônio", "Arthur", "Beatriz", "Benício", "Benjamin", "Bernardo", "Bianca", "Breno", "Bruna", "Bryan", "Caio", "Carla", "Carlos", "Catarina", "Cauã", "Cecília", "Célia", "César", "Clara", "Dalila", "Daniel", "Danilo", "Davi", "Deneval", "Djalma", "Eduarda", "Eduardo", "Elísio", "Emanuel", "Emanuelly", "Enrico", "Enzo", "Esther", "Fabiano", "Fábio", "Fabrícia", "Fabrício", "Felícia", "Feliciano", "Felipe", "Félix", "Fernanda", "Francisco", "Frederico", "Gabriel", "Gabriela", "Giovanna", "Gúbio", "Guilherme", "Gustavo", "Heitor", "Helena", "Hélio", "Heloísa", "Henrique", "Hugo", "Ígor", "Isaac", "Isabel", "Isabela", "Isabella", "Isabelly", "Isadora", "Isis", "Janaína", "Joana", "João", "Joaquim", "Júlia", "Júlio", "Karla", "Kléber", "Ladislau", "Lara", "Larissa", "Laura", "Lavínia", "Leonardo", "Letícia", "Lívia", "Lorena", "Lorenzo", "Lorraine", "Lucas", "Lucca", "Luiza", "Manuela", "Marcela", "Marcelo", "Márcia", "Márcio", "Marcos", "Margarida", "Maria", "Mariana", "Marina", "Marli", "Matheus", "Meire", "Melissa", "Mércia", "Miguel", "Morgana", "Murilo", "Natália", "Nataniel", "Nicolas", "Nicole", "Norberto", "Núbia", "Ofélia", "Pablo", "Paula", "Paulo", "Pedro", "Pietro", "Rafael", "Rafaela", "Raul", "Rebeca", "Ricardo", "Roberta", "Roberto", "Salvador", "Samuel", "Sara", "Sarah", "Silas", "Sílvia", "Sirineu", "Sophia", "Suélen", "Talita", "Tertuliano", "Theo", "Thiago", "Thomas", "Valentina", "Vicente", "Víctor", "Vinicius", "Vitor", "Vitória", "Warley", "Washington", "Yago", "Yango", "Yasmin", "Yuri", "Adriana", "Agatha", "Alessandra", "Allana", "Ana Beatriz", "Ana Cecília", "Ana Clara", "Ana Júlia", "Ana Laura", "Ana Lívia", "Ana Luiza", "Ana Sophia", "Ana Vitória", "André", "Anthony", "Antonella", "Antonia", "Arthur Gabriel", "Arthur Henrique", "Arthur Miguel", "Augusto", "Aurora", "Ayla", "Bárbara", "Bento", "Bruno", "Calebe", "Camila", "Carlos Eduardo", "Carolina", "Clarice", "Davi Lucas", "Davi Lucas", "Davi Lucca", "Davi Lucca", "Davi Luiz", "Davi Miguel", "Elisa", "Eloah", "Emilly", "Enzo Gabriel", "Enzo Gabriel", "Enzo Miguel", "Erick", "Fernando", "Francisca", "Gabrielly", "Gael", "Giulia", "Henry", "Ian", "Igor", "Joao", "João Gabriel", "João Guilherme", "João Lucas", "João Lucas", "João Miguel", "João Miguel", "João Pedro", "João Pedro", "João Vitor", "João Vitor", "José", "Juliana", "Kaique", "Kauê", "Laís", "Levi", "Liz", "Louise", "Luan", "Luana", "Lucas Gabriel", "Luiz", "Luiz Felipe", "Luiz Gustavo", "Luiz Henrique", "Luiz Miguel", "Luiz Otávio", "Luna", "Maitê", "Malu", "Marcia", "Maria Alice", "Maria Cecília", "Maria Clara", "Maria Eduarda", "Maria Fernanda", "Maria Flor", "Maria Helena", "Maria Isis", "Maria Júlia", "Maria Laura", "Maria Luiza", "Maria Sophia", "Maria Valentina", "Maria Vitória", "Mariah", "Mathias", "Maya", "Milena", "Mirella", "Nathan", "Noah", "Oliver", "Olívia", "Otávio", "Patricia", "Pedro Henrique", "Pedro Henrique", "Pedro Lucas", "Pedro Miguel", "Pérola", "Pietra", "Rodrigo", "Ruan", "Ryan", "Sophie", "Stella", "Tiago", "Tomás", "Vinícius", "Vitor Hugo"]

  @doc """
  Returns a random last name
  """
  @spec last_name() :: String.t
  sampler :last_name, ["Aguiar", "Albuquerque", "Almada", "Almeida", "Álvares", "Alves", "Ambrósio", "Amoreira", "Antena", "Antunes", "Aparício", "Aragão", "Arantes", "Araújo", "Aroeira", "Arriaga", "Assumpção", "Banheira", "Barata", "Barbosa", "Barreira", "Barreto", "Barros", "Barroso", "Batista", "Beltrão", "Bentes", "Bernardes", "Bittencourt", "Bomdia", "Bonfim", "Bouças", "Braga", "Brites", "Brum", "Bulhões", "Cabreira", "Cachoeira", "Caldas", "Caldeira", "Camacho", "Campos", "Cardoso", "Carneiro", "Carreira", "Carvalheira", "Carvalho", "Caseira", "Casqueira", "Castanheira", "Castanho", "Castelo", "Castro", "Cavalcanti", "Cerqueira", "Chaves", "Conceição", "Coqueiro", "Corrêa", "Corte", "Costa", "Coutinho", "Crespo", "Cruz", "Custódio", "da Aldeia", "da Bandeira", "da Barra", "da Barranca", "da Conceição", "da Costa", "da Cruz", "da Cunha", "da Fonseca", "da Fontoura", "da Fronteira", "da Gama", "da Luz", "da Madureira", "da Maia", "da Mata", "da Mota", "da Nóbrega", "da Paz", "da Penha", "da Rocha", "da Rosa", "da Silva", "da Silveira", "da Terra", "da Veiga", "Dantas", "das Neves", "Datena", "de Assunção", "de Borba", "de Lara", "de Lins", "de Oliveira", "de Quadros", "de Sá", "Dias", "Diegues", "do Prado", "Domingues", "Dorneles", "dos Reis", "Duarte", "Espinheira", "Espinhosa", "Esteves", "Farias", "Fernandes", "Ferraço", "Ferreira", "Figueira", "Filgueira", "Fogaça", "Fontes", "Fontinhas", "Franco", "Freitas", "Gabeira", "Galego", "Galvão", "Garcês", "Garcez", "Gentil", "Geraldes", "Godinho", "Godins", "Gomes", "Gomide", "Gonçalves", "Goulart", "Grotas", "Guedes", "Guterres", "Henriques", "Hermingues", "Hernandes", "Jaques", "Jesus", "Junqueira", "Laranjeira", "Leiria", "Lessa", "Lima", "Limeira", "Lobos", "Longuinho", "Lopes", "Louzada", "Macedo", "Macieira", "Madeira", "Mangueira", "Marcondes", "Marins", "Marques", "Martim", "Martins", "Matoso", "Meira", "Meireles", "Melo", "Mendanha", "Mendes", "Menendes", "Modesto", "Moniz", "Monteira", "Monteiro", "Moraes", "Morais", "Moreira", "Moreno", "Moura", "Munhoz", "Muniz", "Nascimento", "Negrão", "Neves", "Nogueira", "Novaes", "Nunes", "Oliveira", "Ordonhes", "Ornelas", "Ouriques", "Paes", "Paiva", "Palhares", "Palmeira", "Parreira", "Passarinho", "Pedroso", "Peixoto", "Pereira", "Peres", "Pimenta", "Pinheira", "Pinto", "Pires", "Porteira", "Porto", "Quaresma", "Quarteira", "Raia", "Ramalho", "Rameira", "Ramires", "Ramos", "Rebouças", "Rêgo", "Regueira", "Reis", "Resende", "Rezende", "Ribas", "Ribeira", "Ribeiro", "Rios", "Rocha", "Rodrigues", "Rolim", "Roriz", "Roseira", "Sá", "Sais", "Sales", "Sanches", "Santana", "Santos", "Saraiva", "Silva", "Silveira", "Simão", "Simões", "Siqueira", "Siqueiro", "Soares", "Soeira", "Solimões", "Souza", "Tavares", "Taveira", "Teixeira", "Teles", "Vasques", "Velasques", "Veles", "Veloso", "Viana", "Vidal", "Videira", "Vieira", "Vimaranes", "Viveiros", "Xavier", "Ximenes"]

  @doc """
  Returns a random prefix
  """
  @spec prefix() :: String.t
  sampler :prefix, ["Sr.", "Sra.", "Srta.", "Dr.", "Dra."]

  @doc """
  Returns a random suffix
  """
  @spec suffix() :: String.t
  sampler :suffix, ["Jr.", "Neto", "Filho"]
end
