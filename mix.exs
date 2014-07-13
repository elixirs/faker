defmodule Faker.Mixfile do
  use Mix.Project

  def project do
    [
      app: :faker,
      version: "0.3.2",
      elixir: ">= 0.14.2",
      description: "Faker is pure Elixir library for generating fake data.",
      package: package,
      deps: deps
    ]
  end

  def application do
    [
      applications: [:crypto],
      env: [locale: :en]
    ]
  end

  defp deps do
    [
      { :jsex, "~> 2.0.0" }
    ]
  end

  defp package do
    [
      files: ["lib", "priv", "mix.exs", "mix.lock"],
      contributors: ["Igor Kapkov"],
      licenses: ["MIT"],
      links: [ { "Github", "https://github.com/igas/faker" } ]
    ]
  end
end
