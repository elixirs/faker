# Faker
[![Version](https://img.shields.io/hexpm/v/faker.svg?style=flat-square)](https://hex.pm/packages/faker)[![License](https://img.shields.io/hexpm/l/faker.svg?style=flat-square)](https://github.com/elixirs/faker/blob/master/LICENSE)[![Build Status](https://img.shields.io/travis/elixirs/faker.svg?style=flat-square)](https://travis-ci.org/elixirs/faker)[![Issues](https://img.shields.io/github/issues/elixirs/faker.svg?style=flat-square)](https://github.com/elixirs/faker/issues)[![Downloads](https://img.shields.io/hexpm/dt/faker.svg?style=flat-square)](https://hex.pm/packages/faker)[![Gitter](https://img.shields.io/gitter/room/nwjs/nw.js.svg?style=flat-square)](https://gitter.im/igas/faker)

**Faker** is a pure [Elixir](http://elixir-lang.org/) library for generating
fake data.

- [Faker](#faker)
  - [Quickstart](#quickstart)
  - [Requirements](#requirements)
  - [Usage](#usage)
  - [Troubleshooting](#troubleshooting)
  - [Tools](#tools)
  - [Templating](#contributing)
  - [Team](#team)
  - [Contributing](#contributing)
  - [Thanks](#thanks)
  - [License](#license)

## Quickstart

* add `{:faker, "~> 0.15"}` to your deps in `mix.exs`:

    ```elixir
    defp deps do
      [{:faker, "~> 0.15", only: :test}]
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

See [documentation](http://hexdocs.pm/faker/) and [usage examples](USAGE.md).

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
