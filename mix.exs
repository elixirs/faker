Code.ensure_loaded?(Hex) and Hex.start

defmodule Faker.Mixfile do
  use Mix.Project

  def project do
    [ app: :faker,
      version: "0.1.0",
      elixir: ">= 0.13.0-dev",
      description: "Faker is pure Elixir library for generating fake data.",
      package: package,
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { Faker, [] },
      env: []
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      { :jsex, github: "igas/jsex", branch: "elixir13" }
    ]
  end

  defp package do
    [
      files: ["lib", "priv", "mix.exs"],
      contributors: ["Igor Kapkov"],
      licenses: ["MIT"],
      links: [ { "Github", "https://github.com/igas/faker" } ]
    ]
  end
end
