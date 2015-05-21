defmodule Faker.Mixfile do
  use Mix.Project

  def project do
    [
      app: :faker,
      version: "0.6.0-dev",
      elixir: "~> 1.0.0",
      description: "Faker is a pure Elixir library for generating fake data.",
      package: package,
      name: "Faker",
      source_url: "https://github.com/igas/faker",
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
      {:poison, ">= 1.0.0"},
      {:ex_doc, "~> 0.6", only: :dev},
      {:earmark, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      files: ["lib", "priv", "mix.exs", "mix.lock"],
      contributors: ["Igor Kapkov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/igas/faker"}
    ]
  end
end
