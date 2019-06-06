defmodule Faker.Vehicle do
  import Faker, only: [localize: 1]
  alias Faker.Util

  @moduledoc """
  Functions for generating Vehicle related data
  """

  @doc """
  Returns a vehicle body style string

  ## Examples
      iex> Faker.Vehicle.body_style()
      "Minivan"
      iex> Faker.Vehicle.body_style()
      "Hatchback"
      iex> Faker.Vehicle.body_style()
      "Crew Cab Pickup"
      iex> Faker.Vehicle.body_style()
      "Regular Cab Pickup"
  """
  @spec body_style() :: String.t()
  localize(:body_style)

  @doc """
  Returns a vehicle drivetrain string

  ## Examples
      iex> Faker.Vehicle.drivetrain()
      "4x2/2-wheel drive"
      iex> Faker.Vehicle.drivetrain()
      "4x4/4-wheel drive"
  """
  @spec drivetrain() :: String.t()
  localize(:drivetrain)

  @doc """
  Returns a vehicle fuel type string

  ## Examples
      iex> Faker.Vehicle.fuel_type()
      "Ethanol"
      iex> Faker.Vehicle.fuel_type()
      "E-85/Gasoline"
      iex> Faker.Vehicle.fuel_type()
      "Compressed Natural Gas"
      iex> Faker.Vehicle.fuel_type()
      "Gasoline Hybrid"
  """
  @spec fuel_type() :: String.t()
  localize(:fuel_type)

  @doc """
  Returns a vehicle make string

  ## Examples

      iex> Faker.Vehicle.make()
      "BMW"
      iex> Faker.Vehicle.make()
      "Audi"
      iex> Faker.Vehicle.make()
      "Dodge"
      iex> Faker.Vehicle.make()
      "Ford"
  """
  @spec make() :: String.t()
  localize(:make)

  @doc """
  Returns a vehicle make and model string

  ## Examples

      iex> Faker.Vehicle.make_and_model()
      "BMW X5"
      iex> Faker.Vehicle.make_and_model()
      "Dodge Ram"
      iex> Faker.Vehicle.make_and_model()
      "Toyota Prius"
      iex> Faker.Vehicle.make_and_model()
      "Ford Focus"
  """
  @spec make_and_model() :: String.t()
  localize(:make_and_model)

  @doc """
  Returns a vehicle model string

  ## Examples

      iex> Faker.Vehicle.model()
      "CR-V"
      iex> Faker.Vehicle.model()
      "Enclave"
      iex> Faker.Vehicle.model()
      "Encore"
      iex> Faker.Vehicle.model()
      "Verano"
  """
  @spec model() :: String.t()
  localize(:model)

  @doc """
  Returns a vehicle option string

  ## Examples
      iex> Faker.Vehicle.option()
      "Premium Sound"
      iex> Faker.Vehicle.option()
      "Power Steering"
      iex> Faker.Vehicle.option()
      "A/C: Front"
      iex> Faker.Vehicle.option()
      "Keyless Entry"
  """
  @spec option() :: String.t()
  localize(:option)

  @doc """
  Returns a list of vehicle options

  ## Examples
      iex> Faker.Vehicle.options()
      ["Power Steering", "A/C: Front", "Keyless Entry", "AM/FM Stereo", "Power Steering", "Antilock Brakes", "8-Track Player", "Leather Interior"]
  """
  @spec options() :: String.t()
  localize(:options)

  @doc """
  Returns a list of vehicle options of the given length

  ## Examples
      iex> Faker.Vehicle.options(3)
      ["Premium Sound", "Power Steering", "A/C: Front"]
  """
  @spec options(non_neg_integer()) :: list()
  def options(number) do
    Faker.Vehicle.En.options(number)
  end

  @doc """
  Reterns a vehicle standard option string

  ## Examples
      iex> Faker.Vehicle.standard_spec()
      "Tire pressure monitoring system (TPMS)"
      iex> Faker.Vehicle.standard_spec()
      "20\\" x 9.0\\" front & 20\\" x 10.0\\" rear aluminum wheels"
      iex> Faker.Vehicle.standard_spec()
      "Deluxe insulation group"
      iex> Faker.Vehicle.standard_spec()
      "Torsion beam rear suspension w/stabilizer bar"
  """
  @spec standard_spec() :: String.t()
  localize(:standard_spec)

  @doc """
  Returns a list of vehicle standard specs

  ## Examples
      iex> Faker.Vehicle.standard_specs()
      ["20\\" x 9.0\\" front & 20\\" x 10.0\\" rear aluminum wheels", "Deluxe insulation group", "Torsion beam rear suspension w/stabilizer bar", "High performance suspension", "200mm front axle", "Traveler/mini trip computer", "P235/50R18 all-season tires", "Front door tinted glass"]
  """
  @spec standard_specs() :: list(String.t())
  def standard_specs do
    Faker.Vehicle.En.standard_specs()
  end

  @doc """
  Returns a list of vehicle standard specs of the given length

  ## Examples
      iex> Faker.Vehicle.standard_specs(3)
      ["Tire pressure monitoring system (TPMS)", "20\\" x 9.0\\" front & 20\\" x 10.0\\" rear aluminum wheels", "Deluxe insulation group"]
  """
  @spec standard_specs(non_neg_integer()) :: list(String.t())
  def standard_specs(number) do
    Faker.Vehicle.En.standard_specs(number)
  end

  @doc """
  Returns a vehicle transmission string

  ## Examples
      iex> Faker.Vehicle.transmission()
      "CVT"
      iex> Faker.Vehicle.transmission()
      "Automatic"
      iex> Faker.Vehicle.transmission()
      "Manual"
      iex> Faker.Vehicle.transmission()
      "Automanual"
  """
  @spec transmission() :: String.t()
  localize(:transmission)

  @doc """
  Returns a vehicle identification number string

  ## Examples
      iex> Faker.Vehicle.vin()
      "1C689K5Y000T03374"
      iex> Faker.Vehicle.vin()
      "D0B19RGCDQ0H16449"
      iex> Faker.Vehicle.vin()
      "RSE90354760B00530"
      iex> Faker.Vehicle.vin()
      "LQZ6QTST830A76983"
  """
  def vin do
    Faker.Util.format("%10x%y%x%5d",
      x: fn ->
        Util.pick([Util.upper_letter(), "#{Util.digit()}"])
      end,
      y: fn ->
        Util.pick([Util.upper_letter(), "0"])
      end,
      d: fn ->
        "#{Util.digit()}"
      end
    )
  end
end
