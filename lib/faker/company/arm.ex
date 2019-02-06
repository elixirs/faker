defmodule Faker.Company.Arm do
  import Faker, only: [sampler: 2]

  alias Faker.Name.Arm, as: Name

  @moduledoc """
  Functions for generating company related data in Armenian
  """

  @doc """
  Returns a random complete business related bullshit.

  ## Examples

      iex> Faker.Company.Arm.bs()
      "առավելագույնի հասցնել նորարարական հարաբերություններ"
      iex> Faker.Company.Arm.bs()
      "ակտիվացնել վիրտուալ օգտագործողներ"
      iex> Faker.Company.Arm.bs()
      "առաքել գլոբալ կառուցվածքներ"
      iex> Faker.Company.Arm.bs()
      "առաքել հարուստ փորձառություններ"
  """
  @spec bs() :: String.t()
  def bs, do: "#{bullshit_prefix()} #{bullshit()} #{bullshit_suffix()}"

  @doc """
  Returns a random business related bullshit.

  ## Examples

      iex> Faker.Company.Arm.bullshit()
      "ազդեցիկ"
      iex> Faker.Company.Arm.bullshit()
      "նորարարական"
      iex> Faker.Company.Arm.bullshit()
      "ժամանակակից"
      iex> Faker.Company.Arm.bullshit()
      "ժամանակակից"
  """
  @spec bullshit() :: String.t()
  sampler(:bullshit, [
    "ուղղահայաց",
    "ակտիվ",
    "դիմացկուն",
    "հեղափոխական",
    "առաջատար",
    "նորարարական",
    "ինտուիտիվ",
    "ռազմավարական",
    "էլեկտրոնային",
    "գլոբալ",
    "վիրտուալ",
    "դինամիկ",
    "գրավիչ",
    "ինտերակտիվ",
    "արդյունավետ",
    "ընդարձակելի",
    "պատրաստի",
    "ինտեգրված",
    "ազդեցիկ",
    "անլար",
    "թափանցիկ",
    "հաջորդ սերնդի",
    "ժամանակակից",
    "հարմարեցված",
    "համատարած",
    "ազդեցիկ",
    "ամբողջական",
    "հարուստ",
    "անվճար"
  ])

  @doc """
  Returns a random business related bullshit prefix.

  ## Examples

      iex> Faker.Company.Arm.bullshit_prefix()
      "առավելագույնի հասցնել"
      iex> Faker.Company.Arm.bullshit_prefix()
      "պատկերացնել"
      iex> Faker.Company.Arm.bullshit_prefix()
      "ընդլայնել"
      iex> Faker.Company.Arm.bullshit_prefix()
      "ակտիվացնել"
  """
  @spec bullshit_prefix() :: String.t()
  sampler(:bullshit_prefix, [
    "իրականացնել",
    "օգտագործել",
    "ինտեգրել",
    "ռացիոնալացնել",
    "օպտիմալացնել",
    "զարգացնել",
    "փոխակերպել",
    "ընդգրկել",
    "ակտիվացնել",
    "կազմակերպել",
    "նախագծել",
    "ընդլայնել",
    "խթանել",
    "ձևափոխել",
    "արտոնել",
    "դրամայնացնել",
    "հեշտացնել",
    "վերցնել",
    "աճեցնել",
    "սինթեզել",
    "առաքել",
    "զբաղվել",
    "առավելագույնի հասցնել",
    "արագացնել",
    "միջնորդել",
    "պատկերացնել",
    "վերափոխել",
    "նախաձեռնել",
    "հեղափոխականացնել",
    "առաջացնել",
    "օգտագործել",
    "արտադրանքի վերածել"
  ])

  @doc """
  Returns a random business related bullshit suffix.

  ## Examples

      iex> Faker.Company.Arm.bullshit_suffix()
      "հարաբերություններ"
      iex> Faker.Company.Arm.bullshit_suffix()
      "շուկաներ"
      iex> Faker.Company.Arm.bullshit_suffix()
      "հարաբերություններ"
      iex> Faker.Company.Arm.bullshit_suffix()
      "նախաձեռնություններ"
  """
  @spec bullshit_suffix() :: String.t()
  sampler(:bullshit_suffix, [
    "պարադիգմներ",
    "շուկաներ",
    "ենթակառուցվածքներ",
    "պլատֆորմներ",
    "նախաձեռնություններ",
    "ուղիներ",
    "համայնքներ",
    "լուծումներ",
    "պորտալներ",
    "տեխնոլոգիաներ",
    "հարաբերություններ",
    "կառուցվածքներ",
    "ինտերֆեյսներ",
    "շուկաներ",
    "համակարգեր",
    "մոդելներ",
    "օգտագործողներ",
    "սխեմաներ",
    "ցանցեր",
    "ծրագրեր",
    "չափանիշներ",
    "բիզնես",
    "գործառույթներ",
    "փորձառություններ",
    "մեթոդաբանություններ"
  ])

  @doc """
  Returns a random business related buzzword.

  ## Examples

      iex> Faker.Company.Arm.buzzword()
      "ուղղորդիչ"
      iex> Faker.Company.Arm.buzzword()
      "լոգիստիկ"
      iex> Faker.Company.Arm.buzzword()
      "երրորդական"
      iex> Faker.Company.Arm.buzzword()
      "բացահայտ"
  """
  @spec buzzword() :: String.t()
  sampler(:buzzword, [
    "3-րդ սերնդի",
    "4-րդ սերնդի",
    "5-րդ սերնդի",
    "6-րդ սերնդի",
    "ասիմետրիկ",
    "ասինխրոն",
    "թողունակությունը վերահսկվող",
    "երկկողմանի",
    "հստակ մտածող",
    "համաձայնեցված",
    "բաղադրյալ",
    "դիդակտիկ",
    "ուղղորդիչ",
    "դիսկրետ",
    "բացահայտ",
    "գլոբալ",
    "բարձր մակարդակի",
    "ամբողջական",
    "միատարր",
    "հիբրիդ",
    "ազդեցիկ",
    "ինտերակտիվ",
    "միջանկյալ",
    "առաջատար",
    "տեղային",
    "լոգիստիկ",
    "սիստեմատիկ",
    "մոդուլային",
    "չեզոք",
    "հաջորդ սերնդի",
    "օբյեկտի վրա հիմնված",
    "օպտիմալ",
    "արմատական",
    "փոխադարձ",
    "ռեգիոնալ",
    "երկրորդական",
    "կայուն",
    "ստատիկ",
    "համակարգված",
    "համակարգային",
    "շոշափելի",
    "երրորդական",
    "անցումային",
    "միատեսակ",
    "լավ մոդուլացված",
    "առանց թերությունների"
  ])

  @doc """
  Returns a random business related buzzword prefix.

  ## Examples

      iex> Faker.Company.Arm.buzzword_prefix()
      "Բազմուղի"
      iex> Faker.Company.Arm.buzzword_prefix()
      "Կարգավորելի"
      iex> Faker.Company.Arm.buzzword_prefix()
      "Փոխարկելի"
      iex> Faker.Company.Arm.buzzword_prefix()
      "Ծրագրավորելի"
  """
  @spec buzzword_prefix() :: String.t()
  sampler(:buzzword_prefix, [
    "Առաջավոր",
    "Բարելավված",
    "Ավտոմատացված",
    "Հավասարակշռված",
    "Կենտրոնացված",
    "Համատեղելի",
    "Կարգավորելի",
    "Անհատականացված",
    "Ապակենտրոնացված",
    "Թվայնացված",
    "Տարածված",
    "Փոքրացված",
    "Ընդլայնված",
    "Էրգոնիկ",
    "Բացառիկ",
    "Երկարացված",
    "Լիովին կոնֆիգուրացվող",
    "Ֆունկցիոնալ հիմունքներով",
    "Հիմնական",
    "Հորիզոնական",
    "Իրականացված",
    "Նորարական",
    "Ինտեգրված",
    "Ինտուիտիվ",
    "Պարտադիր",
    "Բազմուղի",
    "Բազմաշերտ",
    "Ցանցային",
    "Բաց կոդով",
    "Օպերատիվ",
    "Օպտիմալացված",
    "Օրգանական",
    "Կազմակերպված",
    "Կայուն",
    "Կենսունակ",
    "Ավարտված",
    "Բևեռացված",
    "Կանխարգելող",
    "Ակտիվ",
    "Ծրագրավորելի",
    "Առաջադիմական",
    "Որակով",
    "Ռեակտիվ",
    "Իրականացված",
    "Նվազեցված",
    "Դիմացկուն",
    "Անխափան",
    "Ապահով",
    "Համատեղելի",
    "Հեշտացված",
    "Փոխարկելի",
    "Սինխրոնիզացված",
    "Ունիվերսալ",
    "Ճկուն",
    "Վիրտուալ"
  ])

  @doc """
  Returns a random business related buzzword suffix.

  ## Examples

      iex> Faker.Company.Arm.buzzword_suffix()
      "ինտերֆեյս"
      iex> Faker.Company.Arm.buzzword_suffix()
      "համախմբվածություն"
      iex> Faker.Company.Arm.buzzword_suffix()
      "տեղական ցանց"
      iex> Faker.Company.Arm.buzzword_suffix()
      "գնային կառուցվածք"
  """
  @spec buzzword_suffix() :: String.t()
  sampler(:buzzword_suffix, [
    "կարողություն",
    "մուտք",
    "ադապտեր",
    "ալգորիթմ",
    "միություն",
    "վերլուծիչ",
    "ծրագրային ապահովում",
    "մոտեցում",
    "արխիվ",
    "արհեստական բանականություն",
    "վերաբերմունք",
    "ընդունակություն",
    "կարողություն",
    "մարտահրավեր",
    "գործակցություն",
    "բարդություն",
    "գաղափար",
    "համախմբվածություն",
    "տվյալների բազա",
    "տվյալների պահեստ",
    "սահմանում",
    "իմացություն",
    "կոդավորում",
    "գաղտնագրում",
    "կանխատեսում",
    "հենքային ծրագիր",
    "ֆունկցիա",
    "գործառույթ",
    "գրաֆիկական ինտերֆեյս",
    "սարքային ապահովում",
    "հիերարխիա",
    "հանգույց",
    "ենթակառուցվածք",
    "նախաձեռնություն",
    "ծրագրի ներդրում",
    "հրահանգների հավաքածու",
    "ինտերֆեյս",
    "ինտրանետ",
    "գիտելիքների բազա",
    "տեղական ցանց",
    "մատրիցա",
    "մեթոդաբանություն",
    "միջանկյալ շերտ",
    "միգրացիա",
    "մոդել",
    "կարգավորիչ",
    "մոնիտորինգ",
    "բաց համակարգ",
    "պարադիգմ",
    "պորտալ",
    "գնային կառուցվածք",
    "արդյունավետություն",
    "նախագիծ",
    "ապահովված գիծ",
    "ծրագրային ապահովում",
    "լուծում",
    "ստանդարտացում",
    "ստրատեգիա",
    "կառուցվածք",
    "օպերատիվ խումբ",
    "արտադրողականություն",
    "ժամանակացույց",
    "գործիք",
    "օգտագործում",
    "կայք",
    "աշխատուժ"
  ])

  @doc """
  Returns a random complete catch phrase.

  ## Examples

      iex> Faker.Company.Arm.catch_phrase()
      "Բազմուղի լոգիստիկ տեղական ցանց"
      iex> Faker.Company.Arm.catch_phrase()
      "Ծրագրավորելի 3-րդ սերնդի արտադրողականություն"
      iex> Faker.Company.Arm.catch_phrase()
      "Հեշտացված ուղղորդիչ ալգորիթմ"
      iex> Faker.Company.Arm.catch_phrase()
      "Դիմացկուն չեզոք տվյալների պահեստ"
  """
  @spec catch_phrase() :: String.t()
  def catch_phrase, do: "#{buzzword_prefix()} #{buzzword()} #{buzzword_suffix()}"

  @doc """
  Returns complete company name.

  ## Examples

      iex> Faker.Company.Arm.name()
      "Մարալիկ ԲԲԸ"
      iex> Faker.Company.Arm.name()
      "Վանյան, Կարագյան և Ամիրբեկյան ՓԲԸ"
      iex> Faker.Company.Arm.name()
      "Հովիվյան ՓԲԸ"
      iex> Faker.Company.Arm.name()
      "Միլենա և Աշոտ ԲԲԸ"
  """
  @spec name() :: String.t()
  def name, do: name(Faker.random_between(0, 4))
  defp name(0), do: "#{Faker.Address.Arm.city()} #{suffix()}"
  defp name(1), do: "#{Name.last_name()} #{suffix()}"
  defp name(2), do: "#{Name.last_name()} և #{Name.last_name()} #{suffix()}"
  defp name(3), do: "#{Name.first_name()} և #{Name.first_name()} #{suffix()}"

  defp name(4) do
    "#{Name.last_name()}, #{Name.last_name()} և #{Name.last_name()} #{suffix()}"
  end

  @doc """
  Returns a random type of business entity.

  ## Examples

      iex> Faker.Company.Arm.suffix()
      "ՍՊԸ"
      iex> Faker.Company.Arm.suffix()
      "Հոլդինգ"
      iex> Faker.Company.Arm.suffix()
      "ԲԲԸ"
      iex> Faker.Company.Arm.suffix()
      "ՓԲԸ"
  """
  @spec suffix() :: String.t()
  sampler(:suffix, [
    "ՍՊԸ",
    "ՀՁ",
    "ՓԲԸ",
    "ԲԲԸ",
    "Գրուպ",
    "Հոլդինգ"
  ])
end
