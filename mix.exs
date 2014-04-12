defmodule Faker.Mixfile do
  use Mix.Project

  def project do
    [ app: :faker,
      version: "0.0.1",
      elixir: ">= 0.13.0-dev",
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
end
