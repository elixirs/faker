defmodule Faker.Mixfile do
  use Mix.Project

  def project do
    [
      app: :faker,
      version: "0.6.0",
      elixir: "~> 1.0",
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
      {:ex_doc, "~> 0.7", only: :dev},
      {:earmark, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "mix.lock"],
      maintainers: ["Igor Kapkov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/igas/faker"}
    ]
  end
end
