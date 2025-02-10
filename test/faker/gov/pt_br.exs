defmodule Faker.Gov.PtBrTest do
  use ExUnit.Case, async: true

  import Faker.Gov.PtBr

  doctest Faker.Gov.PtBr

  describe "cpf" do
    test "returns a valid cpf" do
      assert Regex.match?(~r/^\d{3}\.\d{3}\.\d{3}\-\d{2}$/, Faker.Gov.PtBr.cpf())
    end
  end

  describe "area" do
    test "returns a three-digit number" do
      assert String.length(Faker.Gov.PtBr.area()) == 3
    end
  end

  describe "group" do
    test "returns a three-digit number" do
      assert String.length(Faker.Gov.PtBr.group()) == 3
    end
  end

  describe "serial" do
    test "returns a three-digit number" do
      assert String.length(Faker.Gov.PtBr.serial()) == 3
    end
  end

  describe "check_digits" do
    test "returns a two-digit number" do
      assert String.length(Faker.Gov.PtBr.check_digits()) == 2
    end
  end
end
