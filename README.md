# Faker [![Version](https://img.shields.io/hexpm/v/faker.svg?style=flat-square)](https://hex.pm/packages/faker)[![License](https://img.shields.io/hexpm/l/faker.svg?style=flat-square)](https://github.com/igas/faker/blob/master/LICENSE)[![Build Status](https://img.shields.io/travis/igas/faker.svg?style=flat-square)](https://travis-ci.org/igas/faker)[![Issues](https://img.shields.io/github/issues/igas/faker.svg?style=flat-square)](https://github.com/igas/faker/issues)[![Downloads](https://img.shields.io/hexpm/dt/faker.svg?style=flat-square)](https://hex.pm/packages/faker)[![Donation](https://img.shields.io/gratipay/igas.svg?style=flat-square)](https://gratipay.com/igas/)

**Faker** is a pure [Elixir](http://elixir-lang.org/) library for generating
fake data.

## Quickstart

* add `{:faker, "~> 0.9"}` to your deps in `mix.exs`;
* add `:faker` to list of your applications;
* jump to [usage examples](#usage).

Example `mix.exs`:

```elixir
...
  def application do
    [applications: [:logger, :faker]]
  end
...
  defp deps do
    [{:faker, "~> 0.9"}]
  end
...
```

## Install

In your `mix.exs` file, add the `:faker` project to your dependencies
(optionally include the version):

``` elixir
  defp deps do
    [{:faker, "~> 0.9", only: :test}]
  end
```

Do a `mix deps.get` to fetch the dependency. That's it.

If you want to use `faker` outside tests remove `, only: :test` part.

### Requirements

* OTP18+
* Elixir 1.3+

## Usage

You need to start `:faker` application, but due to the many usages of fake data,
(seed database, tests, etc) there's no right place to do it. For example, if you
want to use it in tests, just add `Faker.start` to `test/test_helper.exs`, then,
use any function described in the [documentation](http://hexdocs.pm/faker/) or
in [usage examples](USAGE.md).

## Troubleshooting

*   If you get a message like the one below when you call `Faker.Address.city`,
you need to add `:faker` to your application's mix file, in the `applications`
function, as above.

``` elixir
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

## Thanks

[![Sponsored by Evil Martians](https://evilmartians.com/badges/sponsored-by-evil-martians.svg)](https://evilmartians.com/)

## [License](https://github.com/igas/faker/blob/master/LICENSE)

Released under the MIT License.
