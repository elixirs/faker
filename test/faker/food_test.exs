defmodule FoodTest do
  use ExUnit.Case, async: true

  test "dish/0" do
    assert is_binary(Faker.Food.dish)
  end

  test "description/0" do
    assert is_binary(Faker.Food.description)
  end

  test "ingredient/0" do
    assert is_binary(Faker.Food.ingredient)
  end

  test "spice/0" do
    assert is_binary(Faker.Food.spice)
  end

  test "measurement/0" do
    assert is_binary(Faker.Food.measurement)
  end

  test "measurement_size/0" do
    assert is_binary(Faker.Food.measurement_size)
  end

  test "metric_measurement/0" do
    assert is_binary(Faker.Food.metric_measurement)
  end
end
