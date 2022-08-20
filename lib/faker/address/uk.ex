defmodule Faker.Address.Uk do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating addresses in Ukraine
  """
  @doc """
  Return country.
  https://uk.wikipedia.org/wiki/Список_країн_світу

  ## Examples

      iex> Faker.Address.Uk.country()
      "Україна"
      iex> Faker.Address.Uk.country()
      "Австрія"
      iex> Faker.Address.Uk.country()
      "Вірменія"
      iex> Faker.Address.Uk.country()
      "Кабо-Верде"
  """
  @spec country() :: String.t()
  sampler(:country, [
    "Австралія",
    "Австрія",
    "Азербайджан",
    "Албанія",
    "Алжир",
    "Ангола",
    "Андорра",
    "Антигуа і Барбуда",
    "Аргентина",
    "Афганістан",
    "Багамські Острови",
    "Бангладеш",
    "Барбадос",
    "Бахрейн",
    "Беліз",
    "Бельгія",
    "Бенін",
    "Білорусь",
    "Болгарія",
    "Болівія",
    "Боснія і Герцеговина",
    "Ботсвана",
    "Бразилія",
    "Бруней",
    "Буркіна-Фасо",
    "Бурунді",
    "Бутан",
    "Вануату",
    "Ватикан",
    "Велика Британія",
    "Венесуела",
    "В'єтнам",
    "Вірменія",
    "Габон",
    "Гаїті",
    "Гамбія",
    "Гана",
    "Гаяна",
    "Гватемала",
    "Гвінея",
    "Гвінея-Бісау",
    "Гондурас",
    "Гренада",
    "Греція",
    "Грузія",
    "Данія",
    "Джибуті",
    "Домініка",
    "Домініканська Республіка",
    "Еквадор",
    "Екваторіальна Гвінея",
    "Еритрея",
    "Естонія",
    "Есватіні",
    "Ефіопія",
    "Єгипет",
    "Ємен",
    "Замбія",
    "Західна Сахара",
    "Зімбабве",
    "Ізраїль",
    "Індія",
    "Індонезія",
    "Ірак",
    "Іран",
    "Ірландія",
    "Ісландія",
    "Іспанія",
    "Італія",
    "Йорданія",
    "Кабо-Верде",
    "Казахстан",
    "Камбоджа",
    "Камерун",
    "Канада",
    "Катар",
    "Кенія",
    "Киргизстан",
    "Китай",
    "Кіпр",
    "Кірибаті",
    "Колумбія",
    "Коморські Острови",
    "ДР Конго",
    "Республіка Конго",
    "Південна Корея",
    "Північна Корея",
    "Косово",
    "Коста-Рика",
    "Кот-д'Івуар",
    "Куба",
    "Кувейт",
    "Лаос",
    "Латвія",
    "Лесото",
    "Литва",
    "Ліберія",
    "Ліван",
    "Лівія",
    "Ліхтенштейн",
    "Люксембург",
    "Маврикій",
    "Мавританія",
    "Мадагаскар",
    "Малаві",
    "Малайзія",
    "Малайзія",
    "Малайзія",
    "Мальта",
    "Марокко",
    "Маршаллові Острови",
    "Мексика",
    "Мікронезія",
    "Мозамбік",
    "Мозамбік",
    "Монако",
    "Монголія",
    "М'янма",
    "Намібія",
    "Науру",
    "Непал",
    "Нігер",
    "Нігерія",
    "Нідерланди",
    "Нікарагуа",
    "Німеччина",
    "Нова Зеландія",
    "Норвегія",
    "Об'єднані Арабські Емірати",
    "Оман",
    "Пакистан",
    "Палау",
    "Палестина",
    "Панама",
    "Папуа Нова Гвінея",
    "Парагвай",
    "Перу",
    "Південний Судан",
    "Південно-Африканська Республіка",
    "Північна Македонія",
    "Польща",
    "Португалія",
    "Росія",
    "Руанда",
    "Румунія",
    "Сальвадор",
    "Самоа",
    "Сан-Марино",
    "Сан-Томе і Принсіпі",
    "Саудівська Аравія",
    "Сейшельські Острови",
    "Сенегал",
    "Сент-Вінсент і Гренадини",
    "Сент-Кіттс і Невіс",
    "Сент-Люсія",
    "Сербія[o]",
    "Сінгапур",
    "Сирія",
    "Словаччина",
    "Словенія",
    "Соломонові Острови",
    "Сомалі",
    "Сполучені Штати Америки",
    "Судан",
    "Суринам",
    "Східний Тимор",
    "Сьєрра-Леоне",
    "Таджикистан",
    "Таїланд",
    "Тайвань",
    "Танзанія",
    "Того",
    "Тонга",
    "Танзанія",
    "Тувалу",
    "Туніс",
    "Туреччина",
    "Туркменістан",
    "Уганда",
    "Угорщина",
    "Узбекистан",
    "Україна",
    "Уругвай",
    "Фіджі",
    "Філіппіни",
    "Фінляндія",
    "Франція",
    "Хорватія",
    "Центральноафриканська Республіка",
    "Чад",
    "Чехія",
    "Чилі",
    "Чорногорія",
    "Швейцарія",
    "Швеція",
    "Шрі-Ланка",
    "Ямайка",
    "Японія",
  ])

  @doc """
  Return state.
  https://uk.wikipedia.org/wiki/Адміністративний_устрій_України

  ## Examples

      iex> Faker.Address.Uk.state()
      "Житомирська область"
      iex> Faker.Address.Uk.state()
      "Сумська область"
      iex> Faker.Address.Uk.state()
      "Хмельницька область"
      iex> Faker.Address.Uk.state()
      "Одеська область"
  """
  @spec state() :: String.t()
  sampler(:state, [
    "Автономна Республіка Крим",
    "Вінницька область",
    "Волинська область",
    "Дніпропетровська область",
    "Донецька область",
    "Житомирська область",
    "Закарпатська область",
    "Запорізька область",
    "Івано-Франківська область",
    "Київська область",
    "Кіровоградська область",
    "Луганська область",
    "Львівська область",
    "Миколаївська область",
    "Одеська область",
    "Полтавська область",
    "Рівненська область",
    "Сумська область",
    "Тернопільська область",
    "Харківська область",
    "Херсонська область",
    "Хмельницька область",
    "Черкаська область",
    "Чернівецька область",
    "Чернігівська область"
  ])
end