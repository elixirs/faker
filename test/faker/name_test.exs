defmodule Faker.NameTest do
  use ExUnit.Case, async: true

  doctest Faker.Name
  doctest Faker.Name.En
  doctest Faker.Name.Es
  doctest Faker.Name.Hy
  doctest Faker.Name.It
  doctest Faker.Name.PtBr
  doctest Faker.Name.Ru
  doctest Faker.Name.Ru.Male
  doctest Faker.Name.Ru.Female

  describe "random gender for Ru" do
    test "Faker.Name.Ru.name/0" do
      assert Faker.Name.Ru.name() == "Глеб Никонов"
    end

    test "Faker.Name.Ru.first_name/0" do
      assert Faker.Name.Ru.first_name() == "Иван"
    end

    test "Faker.Name.Ru.last_name/0" do
      assert Faker.Name.Ru.last_name() == "Трофимов"
    end

    test "Faker.Name.Ru.prefix/0" do
      assert Faker.Name.Ru.prefix() == "Д-р."
    end
  end
end
