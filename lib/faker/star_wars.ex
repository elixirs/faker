defmodule Faker.StarWars do
  @moduledoc """
  Functions for generating StarWars related data
  """

  @doc """
  Returns a Star Wars character name

  ## Examples

      iex> Faker.StarWars.character()
      "Greedo"
      iex> Faker.StarWars.character()
      "Jek Tono Porkins"
      iex> Faker.StarWars.character()
      "Poe Dameron"
      iex> Faker.StarWars.character()
      "R4-P17"
  """
  @spec character() :: String.t()
  def character do
    localised_module().character
  end

  @doc """
  Returns a Star Wars planet name

  ## Examples

      iex> Faker.StarWars.planet()
      "Mon Cala"
      iex> Faker.StarWars.planet()
      "Ryloth"
      iex> Faker.StarWars.planet()
      "Endor"
      iex> Faker.StarWars.planet()
      "Shili"
  """
  @spec planet() :: String.t()
  def planet do
    localised_module().planet
  end

  @doc """
  Returns a Star Wars quote

  ## Examples

      iex> Faker.StarWars.quote()
      "Congratulations. You are being rescued. Please do not resist."
      iex> Faker.StarWars.quote()
      "What chance do we have? The question is 'what choice'. Run, hide, plead for mercy, scatter your forces. You give way to an enemy this evil with this much power and you condemn the galaxy to an eternity of submission. The time to fight is now!"
      iex> Faker.StarWars.quote()
      "Will someone get this big walking carpet out of my way?"
      iex> Faker.StarWars.quote()
      "To be Jedi is to face the truth, and choose. Give off light, or darkness, Padawan. Be a candle, or the night."
  """
  @spec quote() :: String.t()
  def quote do
    Module.concat(__MODULE__, Faker.mlocale()).quote
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale())
end
