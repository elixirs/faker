defmodule Faker.Mixfile do
  use Mix.Project

  @version "0.8.0"

  def project do
    [
      app: :faker,
      version: @version,
      elixir: "~> 1.0",
      description: "Faker is a pure Elixir library for generating fake data.",
      package: package(),
      name: "Faker",
      source_url: "https://github.com/igas/faker",
      deps: deps()
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:earmark, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, ">= 0.0.0", only: [:dev, :test], runtime: false},
    ]
  end

  defp package do
    %{
      files: ["lib", "mix.exs", "mix.lock"],
      maintainers: ["Igor Kapkov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/igas/faker"}
    }
  end
end
