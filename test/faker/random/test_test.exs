defmodule Faker.Random.TestTest do
  use ExUnit.Case, async: true

  describe "automatic ExUnit seed" do
    test "automatically uses ExUnit seed for deterministic output" do
      :ets.delete(:seed_registry, self())
      a = Faker.Person.first_name()

      :ets.delete(:seed_registry, self())
      b = Faker.Person.first_name()

      assert a == b
    end

    test "determinism applies across multiple Faker modules" do
      :ets.delete(:seed_registry, self())
      a1 = Faker.Person.first_name()
      a2 = Faker.Address.city()
      a3 = Faker.Company.name()

      :ets.delete(:seed_registry, self())
      b1 = Faker.Person.first_name()
      b2 = Faker.Address.city()
      b3 = Faker.Company.name()

      assert a1 == b1
      assert a2 == b2
      assert a3 == b3
    end
  end

  describe "seed/1" do
    test "same seed produces same values" do
      :ets.delete(:seed_registry, self())
      Faker.Random.Test.seed(12345)
      a = Faker.Person.first_name()
      b = Faker.Person.last_name()

      :ets.delete(:seed_registry, self())
      Faker.Random.Test.seed(12345)
      c = Faker.Person.first_name()
      d = Faker.Person.last_name()

      assert a == c
      assert b == d
    end

    test "different seeds produce different values" do
      :ets.delete(:seed_registry, self())
      Faker.Random.Test.seed(11111)
      a = Faker.Person.first_name()

      :ets.delete(:seed_registry, self())
      Faker.Random.Test.seed(99999)
      b = Faker.Person.first_name()

      assert a != b
    end

    test "overrides the automatic ExUnit seed" do
      :ets.delete(:seed_registry, self())
      a = Faker.Person.first_name()

      :ets.delete(:seed_registry, self())
      Faker.Random.Test.seed(99999)
      b = Faker.Person.first_name()

      assert a != b
    end
  end
end
