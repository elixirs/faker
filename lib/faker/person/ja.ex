defmodule Faker.Person.Ja do
  @moduledoc """
  Functions for name data in Japanese; 日本語の人名を生成する関数群
  """
  import Faker, only: [sampler: 2]

  @doc """
  Returns a complete name; 姓名を返す

  In Japanese complete (official) names are usually written
  without prefixes/suffixes so it does not include them.
  日本語では、正式な人名表記には通常敬称を含めない。
  この関数も敬称を含まない姓名を返す。

  ## Examples

      iex> Faker.Person.Ja.name()
      "鈴木亮"
      iex> Faker.Person.Ja.name()
      "菊地真央"
      iex> Faker.Person.Ja.name()
      "宮崎大輝"
      iex> Faker.Person.Ja.name()
      "斎藤仁"
  """
  @spec name() :: String.t()
  def name(), do: name(Faker.random_between(0, 9))
  defp name(n) when is_integer(n), do: "#{last_name()}#{first_name()}"

  @doc """
  Returns a random last name; 姓を返す

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
  sampler(:last_name, [
    "佐藤",
    "鈴木",
    "高橋",
    "田中",
    "伊藤",
    "山本",
    "渡辺",
    "中村",
    "小林",
    "加藤",
    "吉田",
    "山田",
    "佐々木",
    "山口",
    "松本",
    "井上",
    "木村",
    "林",
    "斎藤",
    "清水",
    "山崎",
    "阿部",
    "森",
    "池田",
    "橋本",
    "山下",
    "石川",
    "中島",
    "前田",
    "藤田",
    "後藤",
    "小川",
    "岡田",
    "村上",
    "長谷川",
    "近藤",
    "石井",
    "斉藤",
    "坂本",
    "遠藤",
    "藤井",
    "青木",
    "福田",
    "三浦",
    "西村",
    "藤原",
    "太田",
    "松田",
    "原田",
    "岡本",
    "中野",
    "中川",
    "小野",
    "田村",
    "竹内",
    "金子",
    "中山",
    "和田",
    "石田",
    "工藤",
    "上田",
    "原",
    "森田",
    "酒井",
    "横山",
    "柴田",
    "宮崎",
    "宮本",
    "内田",
    "高木",
    "谷口",
    "安藤",
    "丸山",
    "今井",
    "大野",
    "高田",
    "菅原",
    "河野",
    "武田",
    "藤本",
    "上野",
    "杉山",
    "千葉",
    "村田",
    "増田",
    "小島",
    "小山",
    "大塚",
    "平野",
    "久保",
    "渡部",
    "松井",
    "菊地",
    "岩崎",
    "松尾",
    "佐野",
    "木下",
    "野口",
    "野村",
    "新井"
  ])

  @doc """
  Returns a random first name; 名を返す

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
  sampler(:first_name, [
    "翔太",
    "蓮",
    "翔",
    "陸",
    "颯太",
    "悠斗",
    "大翔",
    "翼",
    "樹",
    "奏太",
    "大和",
    "大輝",
    "悠",
    "隼人",
    "健太",
    "大輔",
    "駿",
    "陽斗",
    "優",
    "陽",
    "悠人",
    "誠",
    "拓海",
    "仁",
    "悠太",
    "悠真",
    "大地",
    "健",
    "遼",
    "大樹",
    "諒",
    "響",
    "太一",
    "一郎",
    "優斗",
    "亮",
    "海斗",
    "颯",
    "亮太",
    "匠",
    "陽太",
    "航",
    "瑛太",
    "直樹",
    "空",
    "光",
    "太郎",
    "輝",
    "一輝",
    "蒼",
    "葵",
    "優那",
    "優奈",
    "凛",
    "陽菜",
    "愛",
    "結衣",
    "美咲",
    "楓",
    "さくら",
    "遥",
    "美優",
    "莉子",
    "七海",
    "美月",
    "結菜",
    "真央",
    "花音",
    "陽子",
    "舞",
    "美羽",
    "優衣",
    "未来",
    "彩",
    "彩乃",
    "彩花",
    "優",
    "智子",
    "奈々",
    "千尋",
    "愛美",
    "優菜",
    "杏",
    "裕子",
    "芽衣",
    "綾乃",
    "琴音",
    "桜",
    "恵",
    "杏奈",
    "美桜",
    "優花",
    "玲奈",
    "結",
    "茜",
    "美穂",
    "明日香",
    "愛子",
    "美緒",
    "碧"
  ])
end
