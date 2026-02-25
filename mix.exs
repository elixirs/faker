defmodule Faker.Mixfile do
  use Mix.Project

  @source_url "https://github.com/ChristofVerhoeven/faker"
  @version "0.19.0"

  def project do
    [
      app: :faker,
      version: @version,
      elixir: "~> 1.17",
      description: "Faker is a pure Elixir library for generating fake data.",
      package: package(),
      name: "Faker",
      deps: deps(),
      docs: docs(),
      dialyzer: [
        flags: [
          :error_handling,
          :race_conditions,
          :underspecs
        ]
      ]
    ]
  end

  def application do
    [
      applications: [:crypto],
      env: env()
    ]
  end

  defp env do
    [
      locale: :en,
      country: nil,
      random_module: Faker.Random.Elixir
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.40", only: :dev, runtime: false},
      {:earmark, "~> 1.4", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev], runtime: false}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["CHANGELOG.md", "README.md"],
      skip_undefined_reference_warnings_on: ["CHANGELOG.md"],
      source_url: @source_url,
      source_ref: "v#{@version}"
    ]
  end

  defp package do
    %{
      maintainers: ["Christof Verhoeven"],
      files: ["lib", "mix.exs", "mix.lock", "README.md", "LICENSE", "CHANGELOG.md"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    }
  end
end
