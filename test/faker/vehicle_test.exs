defmodule Faker.VehicleTest do
  use ExUnit.Case, async: true

  #:rand.seed(:exsplus, {101, 102, 103})

  doctest Faker.Vehicle
  doctest Faker.Vehicle.En
end
