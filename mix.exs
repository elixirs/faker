defmodule Faker.Mixfile do
  use Mix.Project

  @version "0.9.0"

  def project do
    [
      app: :faker,
      version: @version,
      elixir: "~> 1.3",
      description: "Faker is a pure Elixir library for generating fake data.",
      package: package(),
      name: "Faker",
      source_url: "https://github.com/igas/faker",
      deps: deps(),
      dialyzer: [
        flags: [
          :error_handling,
          :no_behaviours,
          :no_contracts,
          :no_fail_call,
          :no_fun_app,
          :no_improper_lists,
          :no_match,
          :no_missing_calls,
          :no_opaque,
          :no_return,
          :no_undefined_callbacks,
          :no_unused,
          :race_conditions
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
      random_module: Faker.Random.Elixir
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:earmark, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
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
