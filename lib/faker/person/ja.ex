defmodule Faker.Person.Ja do
  @moduledoc """
  Functions for name data in Japanese

  Samples based on https://github.com/faker-ruby/faker
  """
  import Faker, only: [sampler: 2]

  @doc """
  Returns a complete name

  ## Examples

      iex> Faker.Person.Ja.name()
      "近藤颯太"
      iex> Faker.Person.Ja.name()
      "横山真央"
      iex> Faker.Person.Ja.name()
      "斎藤仁"
      iex> Faker.Person.Ja.name()
      "中島諒"
  """
  @spec name() :: String.t()
  def name, do: name(Faker.random_between(0, 9))
  defp name(n) when is_integer(n), do: elem(name_with_kana(), 0)

  @doc """
  Returns a complete name with kanas

  Kana (hiragana/katakana) is phonetic lettering system of Japanese.
  It tells us how should we read generated names.
  It is common in legal documents (also in web applications)
  to require them for disambiguation, since a name in kanji
  may have varied readings!

  ## Examples

      iex> Faker.Person.Ja.name_with_kana()
      {"鈴木亮", "すずきりょう", "スズキリョウ"}
      iex> Faker.Person.Ja.name_with_kana()
      {"菊地真央", "きくちまお", "キクチマオ"}
      iex> Faker.Person.Ja.name_with_kana()
      {"宮崎大輝", "みやざきだいき", "ミヤザキダイキ"}
      iex> Faker.Person.Ja.name_with_kana()
      {"斎藤仁", "さいとうひとし", "サイトウヒトシ"}
  """
  @spec name_with_kana() :: {String.t(), String.t(), String.t()}
  def name_with_kana, do: name_with_kana(Faker.random_between(0, 9))

  defp name_with_kana(n) when is_integer(n) do
    {ln_kanji, ln_hira, ln_kata} = last_name_with_kana()
    {fn_kanji, fn_hira, fn_kata} = first_name_with_kana()
    {"#{ln_kanji}#{fn_kanji}", "#{ln_hira}#{fn_hira}", "#{ln_kata}#{fn_kata}"}
  end

  @doc """
  Returns a random last name

  ## Examples

      iex> Faker.Person.Ja.last_name()
      "吉田"
      iex> Faker.Person.Ja.last_name()
      "鈴木"
      iex> Faker.Person.Ja.last_name()
      "近藤"
      iex> Faker.Person.Ja.last_name()
      "伊藤"
  """
  @spec last_name() :: String.t()
  def last_name, do: elem(last_name_with_kana(), 0)

  @doc """
  Returns a random last name with kanas

  ## Examples

      iex> Faker.Person.Ja.last_name()
      "吉田"
      iex> Faker.Person.Ja.last_name()
      "鈴木"
      iex> Faker.Person.Ja.last_name()
      "近藤"
      iex> Faker.Person.Ja.last_name()
      "伊藤"
  """
  @spec last_name_with_kana() :: {String.t(), String.t(), String.t()}
  sampler(:last_name_with_kana, [
    {"佐藤", "さとう", "サトウ"},
    {"鈴木", "すずき", "スズキ"},
    {"高橋", "たかはし", "タカハシ"},
    {"田中", "たなか", "タナカ"},
    {"伊藤", "いとう", "イトウ"},
    {"山本", "やまもと", "ヤマモト"},
    {"渡辺", "わたなべ", "ワタナベ"},
    {"中村", "なかむら", "ナカムラ"},
    {"小林", "こばやし", "コバヤシ"},
    {"加藤", "かとう", "カトウ"},
    {"吉田", "よしだ", "ヨシダ"},
    {"山田", "やまだ", "ヤマダ"},
    {"佐々木", "ささき", "ササキ"},
    {"山口", "やまぐち", "ヤマグチ"},
    {"松本", "まつもと", "マツモト"},
    {"井上", "いのうえ", "イノウエ"},
    {"木村", "きむら", "キムラ"},
    {"林", "はやし", "ハヤシ"},
    {"斎藤", "さいとう", "サイトウ"},
    {"清水", "しみず", "シミズ"},
    {"山崎", "やまざき", "ヤマザキ"},
    {"阿部", "あべ", "アベ"},
    {"森", "もり", "モリ"},
    {"池田", "いけだ", "イケダ"},
    {"橋本", "はしもと", "ハシモト"},
    {"山下", "やました", "ヤマシタ"},
    {"石川", "いしかわ", "イシカワ"},
    {"中島", "なかじま", "ナカジマ"},
    {"前田", "まえだ", "マエダ"},
    {"藤田", "ふじた", "フジタ"},
    {"後藤", "ごとう", "ゴトウ"},
    {"小川", "おがわ", "オガワ"},
    {"岡田", "おかだ", "オカダ"},
    {"村上", "むらかみ", "ムラカミ"},
    {"長谷川", "はせがわ", "ハセガワ"},
    {"近藤", "こんどう", "コンドウ"},
    {"石井", "いしい", "イシイ"},
    {"斉藤", "さいとう", "サイトウ"},
    {"坂本", "さかもと", "サカモト"},
    {"遠藤", "えんどう", "エンドウ"},
    {"藤井", "ふじい", "フジイ"},
    {"青木", "あおき", "アオキ"},
    {"福田", "ふくだ", "フクダ"},
    {"三浦", "みうら", "ミウラ"},
    {"西村", "にしむら", "ニシムラ"},
    {"藤原", "ふじわら", "フジワラ"},
    {"太田", "おおた", "オオタ"},
    {"松田", "まつだ", "マツダ"},
    {"原田", "はらだ", "ハラダ"},
    {"岡本", "おかもと", "オカモト"},
    {"中野", "なかの", "ナカノ"},
    {"中川", "なかがわ", "ナカガワ"},
    {"小野", "おの", "オノ"},
    {"田村", "たむら", "タムラ"},
    {"竹内", "たけうち", "タケウチ"},
    {"金子", "かねこ", "カネコ"},
    {"中山", "なかやま", "ナカヤマ"},
    {"和田", "わだ", "ワダ"},
    {"石田", "いしだ", "イシダ"},
    {"工藤", "くどう", "クドウ"},
    {"上田", "うえだ", "ウエダ"},
    {"原", "はら", "ハラ"},
    {"森田", "もりた", "モリタ"},
    {"酒井", "さかい", "サカイ"},
    {"横山", "よこやま", "ヨコヤマ"},
    {"柴田", "しばた", "シバタ"},
    {"宮崎", "みやざき", "ミヤザキ"},
    {"宮本", "みやもと", "ミヤモト"},
    {"内田", "うちだ", "ウチダ"},
    {"高木", "たかぎ", "タカギ"},
    {"谷口", "たにぐち", "タニグチ"},
    {"安藤", "あんどう", "アンドウ"},
    {"丸山", "まるやま", "マルヤマ"},
    {"今井", "いまい", "イマイ"},
    {"大野", "おおの", "オオノ"},
    {"高田", "たかだ", "タカダ"},
    {"菅原", "すがわら", "スガワラ"},
    {"河野", "こうの", "コウノ"},
    {"武田", "たけだ", "タケダ"},
    {"藤本", "ふじもと", "フジモト"},
    {"上野", "うえの", "ウエノ"},
    {"杉山", "すぎやま", "スギヤマ"},
    {"千葉", "ちば", "チバ"},
    {"村田", "むらた", "ムラタ"},
    {"増田", "ますだ", "マスダ"},
    {"小島", "こじま", "コジマ"},
    {"小山", "こやま", "コヤマ"},
    {"大塚", "おおつか", "オオツカ"},
    {"平野", "ひらの", "ヒラノ"},
    {"久保", "くぼ", "クボ"},
    {"渡部", "わたべ", "ワタベ"},
    {"松井", "まつい", "マツイ"},
    {"菊地", "きくち", "キクチ"},
    {"岩崎", "いわさき", "イワサキ"},
    {"松尾", "まつお", "マツオ"},
    {"佐野", "さの", "サノ"},
    {"木下", "きのした", "キノシタ"},
    {"野口", "のぐち", "ノグチ"},
    {"野村", "のむら", "ノムラ"},
    {"新井", "あらい", "アライ"}
  ])

  @doc """
  Returns a random first name

  ## Examples

      iex> Faker.Person.Ja.first_name()
      "大和"
      iex> Faker.Person.Ja.first_name()
      "蓮"
      iex> Faker.Person.Ja.first_name()
      "亮"
      iex> Faker.Person.Ja.first_name()
      "颯太"
  """
  @spec first_name() :: String.t()
  def first_name, do: elem(first_name_with_kana(), 0)

  @doc """
  Returns a random first name with kanas

  ## Examples

      iex> Faker.Person.Ja.first_name_with_kana()
      {"大和", "やまと", "ヤマト"}
      iex> Faker.Person.Ja.first_name_with_kana()
      {"蓮", "れん", "レン"}
      iex> Faker.Person.Ja.first_name_with_kana()
      {"亮", "りょう", "リョウ"}
      iex> Faker.Person.Ja.first_name_with_kana()
      {"颯太", "そうた", "ソウタ"}
  """
  @spec first_name_with_kana() :: {String.t(), String.t(), String.t()}
  sampler(:first_name_with_kana, [
    {"翔太", "しょうた", "ショウタ"},
    {"蓮", "れん", "レン"},
    {"翔", "かける", "カケル"},
    {"陸", "りく", "リク"},
    {"颯太", "そうた", "ソウタ"},
    {"悠斗", "ゆうと", "ユウト"},
    {"大翔", "ひろと", "ヒロト"},
    {"翼", "つばさ", "ツバサ"},
    {"樹", "いつき", "イツキ"},
    {"奏太", "そうた", "ソウタ"},
    {"大和", "やまと", "ヤマト"},
    {"大輝", "だいき", "ダイキ"},
    {"悠", "ゆう", "ユウ"},
    {"隼人", "はやと", "ハヤト"},
    {"健太", "けんた", "ケンタ"},
    {"大輔", "だいすけ", "ダイスケ"},
    {"駿", "しゅん", "シュン"},
    {"陽斗", "はると", "ハルト"},
    {"優", "ゆう", "ユウ"},
    {"陽", "はる", "ハル"},
    {"悠人", "ゆうと", "ユウト"},
    {"誠", "まこと", "マコト"},
    {"拓海", "たくみ", "タクミ"},
    {"仁", "ひとし", "ヒトシ"},
    {"悠太", "ゆうた", "ユウタ"},
    {"悠真", "ゆうま", "ユウマ"},
    {"大地", "だいち", "ダイチ"},
    {"健", "けん", "ケン"},
    {"遼", "りょう", "リョウ"},
    {"大樹", "ひろき", "ヒロキ"},
    {"諒", "りょう", "リョウ"},
    {"響", "ひびき", "ヒビキ"},
    {"太一", "たいち", "タイチ"},
    {"一郎", "いちろう", "イチロウ"},
    {"優斗", "ゆうと", "ユウト"},
    {"亮", "りょう", "リョウ"},
    {"海斗", "かいと", "カイト"},
    {"颯", "そう", "ソウ"},
    {"亮太", "りょうた", "リョウタ"},
    {"匠", "たくみ", "タクミ"},
    {"陽太", "ようた", "ヨウタ"},
    {"航", "こう", "コウ"},
    {"瑛太", "えいた", "エイタ"},
    {"直樹", "なおき", "ナオキ"},
    {"空", "そら", "ソラ"},
    {"光", "ひかる", "ヒカル"},
    {"太郎", "たろう", "タロウ"},
    {"輝", "あきら", "アキラ"},
    {"一輝", "かずき", "カズキ"},
    {"蒼", "あお", "アオ"},
    {"葵", "あおい", "アオイ"},
    {"優那", "ゆうな", "ユウナ"},
    {"優奈", "ゆうな", "ユウナ"},
    {"凛", "りん", "リン"},
    {"陽菜", "はるな", "ハルナ"},
    {"愛", "あい", "アイ"},
    {"結衣", "ゆい", "ユイ"},
    {"美咲", "みさき", "ミサキ"},
    {"楓", "かえで", "カエデ"},
    {"さくら", "さくら", "サクラ"},
    {"遥", "はるか", "ハルカ"},
    {"美優", "みゆ", "ミユ"},
    {"莉子", "りこ", "リコ"},
    {"七海", "ななみ", "ナナミ"},
    {"美月", "みつき", "ミツキ"},
    {"結菜", "ゆいな", "ユイナ"},
    {"真央", "まお", "マオ"},
    {"花音", "かのん", "カノン"},
    {"陽子", "ようこ", "ヨウコ"},
    {"舞", "まい", "マイ"},
    {"美羽", "みう", "ミウ"},
    {"優衣", "ゆい", "ユイ"},
    {"未来", "みく", "ミク"},
    {"彩", "あや", "アヤ"},
    {"彩乃", "あやの", "アヤノ"},
    {"彩花", "あやか", "アヤカ"},
    {"優", "ゆう", "ユウ"},
    {"智子", "ともこ", "トモコ"},
    {"奈々", "なな", "ナナ"},
    {"千尋", "ちひろ", "チヒロ"},
    {"愛美", "まなみ", "マナミ"},
    {"優菜", "ゆうな", "ユウナ"},
    {"杏", "あん", "アン"},
    {"裕子", "ゆうこ", "ユウコ"},
    {"芽衣", "めい", "メイ"},
    {"綾乃", "あやの", "アヤノ"},
    {"琴音", "ことね", "コトネ"},
    {"桜", "さくら", "サクラ"},
    {"恵", "めぐみ", "メグミ"},
    {"杏奈", "あんな", "アンナ"},
    {"美桜", "みお", "ミオ"},
    {"優花", "ゆうか", "ユウカ"},
    {"玲奈", "れな", "レナ"},
    {"結", "ゆい", "ユイ"},
    {"茜", "あかね", "アカネ"},
    {"美穂", "みほ", "ミホ"},
    {"明日香", "あすか", "アスカ"},
    {"愛子", "あいこ", "アイコ"},
    {"美緒", "みお", "ミオ"},
    {"碧", "みどり", "ミドリ"}
  ])
end
