defmodule Faker.Mixfile do
  use Mix.Project

  @source_url "https://github.com/elixirs/faker"
  @version "0.19.0-alpha.1"

  def project do
    [
      app: :faker,
      version: @version,
      elixir: "~> 1.6",
      description: "Faker is a pure Elixir library for generating fake data.",
      package: package(),
      name: "Faker",
      deps: deps(),
      docs: docs(),
      source_url: @source_url,
      homepage_url: @source_url,
      preferred_cli_env: [
        "test.watch": :test
      ],
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
      # mod: {Faker.Application, []},
      extra_applications: [:crypto, :makeup],
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
      {:credo, "== 1.7.11", only: [:dev, :test], runtime: false},
      {:dialyxir, "== 1.4.5", only: [:dev], runtime: false},
      {:earmark, "== 1.4.47", only: :dev, runtime: false},
      {:ex_doc, "== 0.37.0", only: :dev, runtime: false},
      {:makeup, "== 1.2.1"},
      {:makeup_elixir, "== 1.0.1"},
      {:mix_test_watch, "== 1.2.0", only: [:dev, :test], runtime: false}
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
    [
      maintainers: ["Anthony Smith", "Igor Kapkov", "Toby Hinloopen", "Vitor Oliveira"],
      files: ["lib", "mix.exs", "mix.lock", "README.md", "LICENSE", "CHANGELOG.md"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
