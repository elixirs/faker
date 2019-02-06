defmodule Faker.Address.Arm do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating addresses in Armenian
  """

  @doc """
  Returns a random building number.

  ## Examples

      iex> Faker.Address.Arm.building_number()
      "1"
      iex> Faker.Address.Arm.building_number()
      "4"
      iex> Faker.Address.Arm.building_number()
      "64"
      iex> Faker.Address.Arm.building_number()
      "108"
  """
  @spec building_number() :: String.t()
  def building_number do
    ["#", "##", "###"]
    |> Enum.at(Faker.random_between(0, 2))
    |> Faker.format()
  end

  @doc """
  Returns city name.

  ## Examples

      iex> Faker.Address.Arm.city()
      "Ստեփանավան"
      iex> Faker.Address.Arm.city()
      "Մարալիկ"
      iex> Faker.Address.Arm.city()
      "Ճամբարակ"
      iex> Faker.Address.Arm.city()
      "Մեղրի"
  """

  @spec city() :: String.t()
  sampler(:city, [
    "Աբովյան",
    "Ագարակ",
    "Ալավերդի",
    "Ախթալա",
    "Այրում",
    "Աշտարակ",
    "Ապարան",
    "Արարատ",
    "Արթիկ",
    "Արմավիր",
    "Արտաշատ",
    "Բերդ",
    "Բյուրեղավան",
    "Գավառ",
    "Գյումրի",
    "Գորիս",
    "Դաստակերտ",
    "Դիլիջան",
    "Եղեգնաձոր",
    "Եղվարդ",
    "Երևան",
    "Վաղարշապատ",
    "Թալին",
    "Թումանյան",
    "Իջևան",
    "Ծաղկաձոր",
    "Կապան",
    "Հրազդան",
    "Ճամբարակ",
    "Մասիս",
    "Մարալիկ",
    "Մարտունի",
    "Մեծամոր",
    "Մեղրի",
    "Նոր Հաճն",
    "Նոյեմբերյան",
    "Շամլուղ",
    "Չարենցավան",
    "Ջերմուկ",
    "Սիսիան",
    "Սպիտակ",
    "Ստեփանավան",
    "Սևան",
    "Վայք",
    "Վանաձոր",
    "Վարդենիս",
    "Վեդի",
    "Տաշիր",
    "Քաջարան"
  ])

  @doc """
  Returns city prefix.

  ## Examples

      iex> Faker.Address.Arm.city_prefix()
      "ք."

  """
  @spec city_prefix() :: String.t()
  sampler(:city_prefix, [
    "ք."
  ])

  @doc """
  Returns country.

  ## Examples

      iex> Faker.Address.Arm.country()
      "Ֆրանսիա"
      iex> Faker.Address.Arm.country()
      "Նիդերլանդներ"
      iex> Faker.Address.Arm.country()
      "Ղազախստան"
      iex> Faker.Address.Arm.country()
      "Թուրքմենստան"
  """
  @spec country() :: String.t()
  sampler(:country, [
    "Աֆղանստան",
    "Ալբանիա",
    "Ալժիր",
    "Ամերիկյան Սամոա",
    "Անդորրա",
    "Անգոլա",
    "Անգիլիա",
    "Անտարկտիկա",
    "Անտիգուա և Բարբուդա",
    "Արգենտինա",
    "Հայաստան",
    "Արուբա",
    "Ավստրալիա",
    "Ավստրիա",
    "Ադրբեջան",
    "Բահամներ",
    "Բահրեյն",
    "Բանգլադեշ",
    "Բարբադոս",
    "Բելառուս",
    "Բելգիա",
    "Բելիզ",
    "Բենին",
    "Բերմուդա",
    "Բութան",
    "Բոլիվիա",
    "Բոսնիա և Հերցեգովինա",
    "Բոտսվանա",
    "Բրազիլիա",
    "Բրունեյ Դարուսսալամ",
    "Բուլղարիա",
    "Բուրկինա Ֆասո",
    "Բուրունդի",
    "Կամբոջա",
    "Կամերուն",
    "Կանադա",
    "Կաբո Վերդե",
    "Կայման Կղզիներ",
    "Կենտրոնական Աֆրիկյան Հանրապետություն",
    "Չադ",
    "Չիլի",
    "Չինաստան",
    "Սուրբ Ծննդյան Կղզի",
    "Կոկոս Կղզիներ",
    "Կոլումբիա",
    "Կոմորյան Կղզիներ",
    "Կոնգո",
    "Կուկի Կղզիներ",
    "Կոստա Ռիկա",
    "Կոտ դ'Իվուար",
    "Խորվաթիա",
    "Կուբա",
    "Կիպրոս",
    "Չեխիայի Հանրապետություն",
    "Դանիա",
    "Ջիբութի",
    "Դոմինիկա",
    "Դոմինիկյան Հանրապետություն",
    "Էկվադոր",
    "Եգիպտոս",
    "Սալվադոր",
    "Հասարակածային Գվինեա",
    "Էրիտրեա",
    "Էստոնիա",
    "Եթովպիա",
    "Ֆարերյան Կղզիներ",
    "Ֆոլկլենդյան Կղզիներ",
    "Ֆիջի",
    "Ֆինլանդիա",
    "Ֆրանսիա",
    "Ֆրանսիական Գվիանա",
    "Ֆրանսիական Պոլինեզիա",
    "Ֆրանսիական Հարավային Տարածքներ",
    "Գաբոն",
    "Գամբիա",
    "Վրաստան",
    "Գերմանիա",
    "Գանա",
    "Ջիբրալթար",
    "Հունաստան",
    "Գրենլանդիա",
    "Գրենադա",
    "Գվադելուպա",
    "Գուամ",
    "Գվատեմալա",
    "Գերնսի",
    "Գվինեա",
    "Գվինեա Բիսաու",
    "Գայանա",
    "Հաիթի",
    "Վատիկան",
    "Հոնդուրաս",
    "Հոնգ Կոնգ",
    "Հունգարիա",
    "Իսլանդիա",
    "Հնդկաստան",
    "Ինդոնեզիա",
    "Իրան",
    "Իրաք",
    "Իռլանիա",
    "Իսրայել",
    "Իտալիա",
    "Ջամայկա",
    "Ճապոնիա",
    "Հորդանան",
    "Ղազախստան",
    "Քենիա",
    "Կիրիբատի",
    "Հյուսիսային Կորեա",
    "Հարավային Կորեա",
    "Կոսովո",
    "Քուվեյթ",
    "Ղրղզստան",
    "Լաոս",
    "Լատվիա",
    "Լիբանան",
    "Լեսոտո",
    "Լիբերիա",
    "Լիբիական Արաբական Ջամահիրիա",
    "Լիխտենշտեյն",
    "Լիտվա",
    "Լյուքսեմբուրգ",
    "Մակաո",
    "Մակեդոնիա",
    "Մադագասկար",
    "Մալավի",
    "Մալազիա",
    "Մալդիվներ",
    "Մալի",
    "Մալթա",
    "Մարշալյան Կղզիներ",
    "Մարտինիկ",
    "Մավրիտանիա",
    "Մավրիկիոս",
    "Մայոտտե",
    "Մեքսիկա",
    "Միկրոնեզիա",
    "Մոլդովա",
    "Մոնակո",
    "Մոնղոլիա",
    "Չեռնոգորիա",
    "Մոնսերատ",
    "Մարոկկո",
    "Մոզամբիկ",
    "Մյանմա",
    "Նամիբիա",
    "Նաուրու",
    "Նեպալ",
    "Նիդեռլանդական Անտիլներ",
    "Նիդերլանդներ",
    "Նոր Կալեդոնիա",
    "Նոր Զելանդիա",
    "Նիկարագուա",
    "Նիգեր",
    "Նիգերիա",
    "Նիուե",
    "Նորֆոլկ Կղզի",
    "Հյուսիսային Մարիանյան Կղզիներ",
    "Նորվեգիա",
    "Օման",
    "Պակիստան",
    "Պալաու",
    "Պաղեստին",
    "Պանամա",
    "Պապուա Նոր Գվինեա",
    "Պարագվայ",
    "Պերու",
    "Ֆիլիպիններ",
    "Պիտկիրնյան Կղզիներ",
    "Լեհաստան",
    "Պորտուգալիա",
    "Պուերտո Ռիկո",
    "Կատար",
    "Ռումինիա",
    "Ռուսաստանի Դաշնություն",
    "Ռուանդա",
    "Սուրբ Բարդուղիմեոս",
    "Սուրբ Հելենա",
    "Սենտ Կիտս և Նևիս",
    "Սուրբ Լուչիա",
    "Սուրբ Մարտին",
    "Սեն Պիեռ և Միկելոն",
    "Սենթ Վինսենթ և Գրենադիններ",
    "Սամոա",
    "Սան Մարինո",
    "Սաուդյան Արաբիա",
    "Սենեգալ",
    "Սերբիա",
    "Սեյշելներ",
    "Սիերա Լեոնե",
    "Սինգապուր",
    "Սլովակիա",
    "Սլովենիա",
    "Սողոմոնյան Կղզիներ",
    "Սոմալի",
    "Հարավային Աֆրիկա",
    "Իսպանիա",
    "Շրի Լանկա",
    "Սուդան",
    "Սուրինամ",
    "Սվալբարդ և Յան Մայենյան Կղզիներ",
    "Սվազիլենդ",
    "Շվեդիա",
    "Շվեյցարիա",
    "Սիրիայի Արաբական Հանրապետություն",
    "Թայվան",
    "Տաջիկստան",
    "Տանզանիա",
    "Թաիլանդ",
    "Տոգո",
    "Տոկելաու",
    "Տոնգա",
    "Տրինիդադ և Տոբագո",
    "Թունիս",
    "Թուրքիա",
    "Թուրքմենստան",
    "Տուվալու",
    "Ուգանդա",
    "Ուկրաինա",
    "Արաբական Միացյալ Էմիրություններ",
    "Մեծ Բրիտանիա",
    "Ամերիկայի Միացյալ Նահանգներ",
    "Ուրուգվայ",
    "Ուզբեկստան",
    "Վենեսուելա",
    "Վիետնամ",
    "Ուոլիս և Ֆուտունա",
    "Արևմտյան Սահարա",
    "Եմեն",
    "Զամբիա",
    "Զիմբաբվե"
  ])

  @doc """
  Returns a random secondary address.

  ## Examples

      iex> Faker.Address.Arm.secondary_address()
      "բն. 1"
      iex> Faker.Address.Arm.secondary_address()
      "բն. 4"
      iex> Faker.Address.Arm.secondary_address()
      "բն. 64"
      iex> Faker.Address.Arm.secondary_address()
      "բն. 110"
  """

  @spec secondary_address() :: String.t()
  def secondary_address do
    ["#", "##", "1##"]
    |> Enum.at(Faker.random_between(0, 2))
    |> Faker.format()
    |> (&("բն. " <> &1)).()
  end

  @doc """
  Returns state.

  ## Examples

      iex> Faker.Address.Arm.state()
      "Արագածոտն"
      iex> Faker.Address.Arm.state()
      "Արարատ"
      iex> Faker.Address.Arm.state()
      "Կոտայք"
      iex> Faker.Address.Arm.state()
      "Լոռի"
  """
  @spec state() :: String.t()
  sampler(:state, [
    "Արագածոտն",
    "Արարատ",
    "Արմավիր",
    "Գեղարքունիք",
    "Լոռի",
    "Կոտայք",
    "Շիրակ",
    "Սյունիք",
    "Տավուշ",
    "Վայոց Ձոր"
  ])

  @doc """
  Returns state abbr.

  ## Examples

      iex> Faker.Address.Arm.state_abbr()
      "ԱԳ"
      iex> Faker.Address.Arm.state_abbr()
      "ԱՐ"
      iex> Faker.Address.Arm.state_abbr()
      "ԿՏ"
      iex> Faker.Address.Arm.state_abbr()
      "ԼՌ"
  """
  @spec state_abbr() :: String.t()
  sampler(:state_abbr, [
    "ԱԳ",
    "ԱՐ",
    "ԱՄ",
    "ԳՂ",
    "ԼՌ",
    "ԿՏ",
    "ՇԿ",
    "ՍՅ",
    "ՎՁ",
    "ՏՎ"
  ])

  @doc """
  Returns street address.

  ## Examples

      iex> Faker.Address.Arm.street_address()
      "Սուրբ Հովհաննեսի 542"
      iex> Faker.Address.Arm.street_address()
      "Բուռնազյան 61"
      iex> Faker.Address.Arm.street_address()
      "Լամբրոնի 329"
      iex> Faker.Address.Arm.street_address()
      "Հանրապետության 5"
  """
  @spec street_address() :: String.t()
  def street_address do
    "#{street_name()} #{building_number()}"
  end

  @doc """
  Returns `street_address/0` or if argument is `true` adds `secondary_address/0`.

  ## Examples

      iex> Faker.Address.Arm.street_address(true)
      "Սուրբ Հովհաննեսի 542 բն. 4"
      iex> Faker.Address.Arm.street_address(false)
      "Գյուլբենկյան 0"
      iex> Faker.Address.Arm.street_address(true)
      "Պուշկինի 29 բն. 0"
      iex> Faker.Address.Arm.street_address(false)
      "Տիգրան Մեծի 35"
  """
  @spec street_address(true | any) :: String.t()
  def street_address(true), do: street_address() <> " " <> secondary_address()
  def street_address(_), do: street_address()

  @doc """
  Returns street name.

  ## Examples

      iex> Faker.Address.Arm.street_name()
      "Սուրբ Հովհաննեսի"
      iex> Faker.Address.Arm.street_name()
      "Մոսկովյան"
      iex> Faker.Address.Arm.street_name()
      "Սերգեյ Փարաջանովի"
      iex> Faker.Address.Arm.street_name()
      "Պրահայի"
  """
  @spec street_name() :: String.t()
  sampler(:street_name, [
    "Ազատության",
    "Արշակունյաց",
    "Արցախի",
    "Գայի",
    "Ծովակալ Իսակովի",
    "Կոմիտասի",
    "Հյուսիսային",
    "Մաշտոցի",
    "Մարշալ Բաղրամյան",
    "Մյասնիկյան",
    "Սայաթ-Նովայի",
    "Տիգրան Մեծի",
    "Աբելյան",
    "Աբովյան",
    "Ագաթանգեղոսի",
    "Ազատամարտիկների",
    "Աթենքի",
    "Աթոյան",
    "Ալեք Մանուկյան",
    "Ալիխանյան",
    "Աղայան",
    "Աղյուսագործների",
    "Ամիրյան",
    "Այասի",
    "Անտառային",
    "Անրի Վեռնոյի",
    "Ավագ Պետրոսյան",
    "Արամ Խաչատրյան",
    "Արամի",
    "Արգիշտիի",
    "Արմենակյան",
    "Բայրոնի",
    "Բարձրաբերդի",
    "Բելինսկու",
    "Բեյրութի",
    "Բուդապեշտի",
    "Բուռնազյան",
    "Բրյուսովի",
    "Գալոյան Եղբայրների",
    "Գարեգին Նժդեհի",
    "Գետառի",
    "Գլինկայի",
    "Գյուլբենկյան",
    "Գրիգոր Լուսավորչի",
    "Գրիգոր Հարությունյան",
    "Գրիգոր Տեր-Գրիգորյան",
    "Գևորգ Էմինի",
    "Գևորգ Հովսեփյան",
    "Գևորգ Քոչարի",
    "Դեղատան",
    "Դերենիկ Դեմիրճյան",
    "Եզնիկ Կողբացու",
    "Եկմալյան",
    "Երվանդ Քոչարի",
    "Զավարյան",
    "Զարոբյան",
    "Զաքյան",
    "Էրեբունու",
    "Թաիրովի",
    "Թամանյան",
    "Թորամանյան",
    "Թումանյան",
    "Իսահակյան",
    "Իսրայելյան",
    "Իտալիայի",
    "Լամբրոնի",
    "Լենինգրադյան",
    "Լեոյի",
    "Լեոնիդ Ազգալդյան",
    "Լեռ Կամսարի",
    "Լիսինյան",
    "Լոմոնոսովի",
    "Լոռիս-Մելիքովի",
    "Լուսինյանց",
    "Խանզադյան",
    "Խանջյան",
    "Ծատուրյան",
    "Ծխախոտագործների",
    "Կալենցի",
    "Կասյան",
    "Կարեն Դեմիրճյան",
    "Կիևյան",
    "Կոնդի",
    "Կորի",
    "Կորյունի",
    "Կուստոյի",
    "Կռիլովի",
    "Հալաբյան",
    "Հակոբ Հակոբյան",
    "Հայրիկ Մուրադյան",
    "Հանրապետության",
    "Հերացու",
    "Հին Երևանցու",
    "Հնդկաստանի",
    "Հովհաննես Կոզեռնի",
    "Հրանտ Շահինյան",
    "Հրաչյա Քոչարի",
    "Ձորափի",
    "Ղազար Փարպեցու",
    "Մայիսյան",
    "Մարկ Գրիգորյան",
    "Մարտի 8-ի",
    "Մելիք-Ադամյան",
    "Միչուրինի",
    "Մհեր Մկրտչյան",
    "Մոնթե Մելքոնյան",
    "Մոսկովյան",
    "Մովսես Խորենացու",
    "Մուրացանի",
    "Նալբանդյան",
    "Նար-Դոսի",
    "Նորքի",
    "Շարա Տալյան",
    "Շարիմանյան",
    "Շուկայի",
    "Ոսկերիչների",
    "Չայկովսկու",
    "Չարենցի",
    "Չեռնիշևսկու",
    "Պարոնյան",
    "Պետրոս Ադամյան",
    "Պուշկինի",
    "Պռոշյան",
    "Պրահայի",
    "Ռոստոմի",
    "Ռոստովյան",
    "Ռուսթավելու",
    "Սասունցի Դավթի",
    "Սարալանջի",
    "Սարմենի",
    "Սարյան",
    "Սեբաստիայի",
    "Սերգեյ Փարաջանովի",
    "Սիլվա Կապուտիկյան",
    "Սիմեոն Երևանցու",
    "Սիսվանի",
    "Սոսեի",
    "Սուվորովի",
    "Սուրբ Հովհաննեսի",
    "Սպենդիարյան",
    "Ստեփան Զորյան",
    "Սևանի",
    "Վազգեն Սարգսյան",
    "Վահրամ Փափազյան",
    "Վաղարշյան",
    "Վարդան Աճեմյան",
    "Վարդանանց",
    "Վերֆելի",
    "Վրացյան",
    "Տարսոնի",
    "Տերյան",
    "Տոլստոյի",
    "Տպագրիչների",
    "Ցախի",
    "Փավստոս Բուզանդի",
    "Քաջազնունու",
    "Քոչինյան",
    "Քրիստափորի",
    "Օստրովսկու",
    "Օրբելի Եղբայրների",
    "Ֆիզկուլտուրնիկների",
    "Ֆիրդուսու",
    "Ֆրիկի"
  ])

  @doc """
  Returns street suffix.

  ## Examples

      iex> Faker.Address.Arm.street_suffix()
      "նրբանցք"
      iex> Faker.Address.Arm.street_suffix()
      "պողոտա"
      iex> Faker.Address.Arm.street_suffix()
      "փակուղի"
      iex> Faker.Address.Arm.street_suffix()
      "փողոց"
  """
  @spec street_suffix() :: String.t()
  sampler(:street_suffix, [
    "փողոց",
    "պողոտա",
    "նրբանցք",
    "փակուղի"
  ])

  @doc """
  Returns a random postcode.

  ## Examples

      iex> Faker.Address.Arm.zip_code()
      "0154"
      iex> Faker.Address.Arm.zip_code()
      "2646"
      iex> Faker.Address.Arm.zip_code()
      "1083"
      iex> Faker.Address.Arm.zip_code()
      "2970"
  """
  @spec zip_code() :: String.t()
  def zip_code do
    ["0###", "1###", "2###", "3###", "4###"]
    |> Enum.at(Faker.random_between(0, 4))
    |> Faker.format()
  end
end
