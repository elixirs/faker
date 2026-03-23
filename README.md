# Faker

[![build](https://github.com/elixirs/faker/actions/workflows/ci.yaml/badge.svg)](https://github.com/elixirs/faker/actions/workflows/ci.yaml)
[![Version](https://img.shields.io/hexpm/v/faker.svg?style=flat-square)](https://hex.pm/packages/faker)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/faker/)
[![License](https://img.shields.io/hexpm/l/faker.svg?style=flat-square)](https://github.com/elixirs/faker/blob/master/LICENSE)
[![Issues](https://img.shields.io/github/issues/elixirs/faker.svg?style=flat-square)](https://github.com/elixirs/faker/issues)
[![Downloads](https://img.shields.io/hexpm/dt/faker.svg?style=flat-square)](https://hex.pm/packages/faker)
[![Gitter](https://img.shields.io/gitter/room/nwjs/nw.js.svg?style=flat-square)](https://gitter.im/igas/faker)
[![Last Updated](https://img.shields.io/github/last-commit/elixirs/faker.svg)](https://github.com/elixirs/faker/commits/master)

**Faker** is a pure [Elixir](http://elixir-lang.org/) library for generating
fake data.

- [Faker](#faker)
  - [Quickstart](#quickstart)
  - [Requirements](#requirements)
  - [Usage](#usage)
  - [Deterministic Testing](#deterministic-testing)
  - [Troubleshooting](#troubleshooting)
  - [Tools](#tools)
  - [Templating](#contributing)
  - [Team](#team)
  - [Contributing](#contributing)
  - [Thanks](#thanks)
  - [License](#license)

## Quickstart

* add `{:faker, "~> 0.19.0-alpha.1"}` to your deps in `mix.exs`:

    ```elixir
    defp deps do
      [
        {:faker, "~> 0.19.0-alpha.1", only: :test}
      ]
    end
    ```

* run:

    ```
    mix deps.get
    ```

* add `Faker.start()` to `test/test_helper.exs`:

    ```elixir
    ExUnit.start()
    Faker.start()
    ```

* jump to [usage examples](#usage).

### Requirements

* OTP 19+
* Elixir 1.6+

## Usage

See [documentation](http://hexdocs.pm/faker/) and [usage examples](https://github.com/elixirs/faker/blob/master/USAGE.md).

## Deterministic Testing

Faker can produce deterministic output tied to ExUnit's seed, making test failures
reproducible by re-running with the same `--seed` value.

Add the following to `test/test_helper.exs`:

```elixir
:ets.new(:seed_registry, [:named_table, :public])
Application.put_env(:faker, :random_module, Faker.Random.Test)
ExUnit.start()
```

That's it. Faker will automatically pick up ExUnit's seed. Running
`mix test --seed 12345` will produce the same Faker values every time, and
ExUnit always prints its seed (`Randomized with seed 12345`) so you can
reproduce any test run by re-using that seed.

To override the seed for a specific test, use `Faker.Random.Test.seed/1`:

```elixir
setup do
  Faker.Random.Test.seed(42)
  :ok
end
```

## Troubleshooting

* If you get a message like the one below when you call `Faker.Address.city/0`,
you need to add `:faker` to your application's mix file, in the `applications`
function, as above.

    ```
    ** (FunctionClauseError) no function clause matching in Faker.Address.city_count/1
    lib/faker/address.ex:48: Faker.Address.city_count(nil)
    lib/faker/address.ex:41: Faker.Address.city/0
    ```

## Tools

Faker was designed as a lightweight library, that's why it can be easily used
with other tools.

## Templating

You can build templates for testing purposes with the
[Blacksmith](https://github.com/batate/blacksmith) project. See the Blacksmith
[readme](https://github.com/batate/blacksmith#readme) for details.

## Team

Faker was originally written by [Igor Kapkov](https://igas.me).

Current list of maintainers:

* [Anthony Smith](https://github.com/anthonator)
* [Igor Kapkov](https://igas.me)
* [Toby Hinloopen](https://github.com/tobyhinloopen)
* [Vitor Oliveira](https://github.com/vbrazo)

## Contributing

Do you want to become a maintainer?

See our [CONTRIBUTING.md](https://github.com/elixirs/faker/blob/master/CONTRIBUTING.md) and start contributing today. We usually elect new maintainers based on contributions.

## Thanks

[![Sponsored by Evil Martians](https://evilmartians.com/badges/sponsored-by-evil-martians.svg)](https://evilmartians.com/)

## [License](https://github.com/elixirs/faker/blob/master/LICENSE)

Released under the MIT License.
