defmodule Faker.Code do
  defdelegate isbn, to: Faker.Code, as: :isbn10

  def isbn10 do
    :random.seed(:erlang.now)
    Faker.format("#########") <> hd(Enum.shuffle(["#", "X"]))
  end

  def isbn13 do
    :random.seed(:erlang.now)
    hd(Enum.shuffle(["978", "979"])) <> Faker.format("#########") <> hd(Enum.shuffle(["#", "X"]))
  end

  def issn do
    :random.seed(:erlang.now)
    Faker.format("####-###") <> hd(Enum.shuffle(["#", "X"]))
  end
end
