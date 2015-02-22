# Faker [![Version](https://img.shields.io/hexpm/v/faker.svg?style=flat-square)](https://hex.pm/packages/faker)[![License](https://img.shields.io/hexpm/l/faker.svg?style=flat-square)](https://github.com/igas/faker/blob/master/LICENSE)[![Build Status](https://img.shields.io/travis/igas/faker.svg?style=flat-square)](https://travis-ci.org/igas/faker)[![Issues](https://img.shields.io/github/issues/igas/faker.svg?style=flat-square)](https://github.com/igas/faker/issues)[![Downloads](https://img.shields.io/hexpm/dt/faker.svg?style=flat-square)](https://hex.pm/packages/faker)[![Donation](https://img.shields.io/gratipay/igas.svg?style=flat-square)](https://gratipay.com/igas/)

**Faker** is a pure [Elixir](http://elixir-lang.org/) library for generating
fake data.

Inspired by:

* Ruby [faker](https://github.com/stympy/faker)
* Ruby [ffaker](https://github.com/EmmanuelOga/ffaker)
* PHP [Faker](https://github.com/fzaninotto/Faker)
* Python [faker](https://github.com/joke2k/Faker)
* Erlang [fakerl](https://github.com/mawuli-ypa/fakerl)
* Haskell [faker](https://github.com/gazay/faker)

## Install

In your `mix.exs` file, add the `:faker` project to your dependencies
(optionally include the version):

``` elixir
  defp deps do
    [{:faker, "~> 0.5", only: :test}]
  end
```

Do a `mix deps.get` to fetch the dependency. That's it.

If you want to use `faker` outside tests remove `, only: :test` part.

## Usage

You nead to start `:faker` application. Cause of many usages of fake data can be
(seed database, tests, etc) it's no right place to start it. For example, if you
want to use it in tests, just add `Faker.start` to `test/test_helper.exs`, and
use any function decribed below. For example, if you nead random name use
`Faker.Name.name`.

## Generators / Providers

* **Address**
  * `building_number()`
  * `city()`
  * `city_prefix()`
  * `city_suffix()`
  * `country()`
  * `latitude()`
  * `longitude()`
  * `postcode()`
  * `secondary_address()`
  * `state()`
  * `state_abbr()`
  * `street_address(secondary_address \\ false)`
  * `street_name()`
  * `street_suffix()`
  * `time_zone()`
  * `zip()`
  * `zip_code()`
* **Avatar**
  * `image_url()`
  * `image_url(slug)`
  * `image_url(width, height)`
  * `image_url(slug, width, height)`
* **Code**
  * `isbn()`
  * `isbn10()`
  * `isbn13()`
  * `issn()`
* **Commerce**
  * `color()`
  * `department()`
  * `price()`
  * `product_name()`
  * `product_name_adjective()`
  * `product_name_material()`
  * `product_name_product()`
* **Company**
  * `bs()`
  * `bullshit()`
  * `bullshit_prefix()`
  * `bullshit_suffix()`
  * `buzzword()`
  * `buzzword_prefix()`
  * `buzzword_suffix()`
  * `catch_phrase()`
  * `name()`
  * `suffix()`
* **Internet**
  * `domain_name()`
  * `domain_suffix()`
  * `domain_word()`
  * `email()`
  * `free_email()`
  * `free_email_service()`
  * `image_url()`
  * `ip_v4_address()`
  * `ip_v6_address()`
  * `mac_address()`
  * `safe_email()`
  * `url()`
  * `user_name()`
* **Lorem**
  * `characters(range \\ 15..255)`
  * `characters(num)`
  * `paragraph(range \\ 2..5)`
  * `paragraph(num)`
  * `paragraphs(range \\ 2..5)`
  * `paragraphs(num)`
  * `sentence(range \\ 4..10)`
  * `sentence(num, mark)`
  * `sentences(range \\ 2..5)`
  * `sentences(num)`
  * `word()`
  * `sentences(range \\ 3..6)`
  * `sentences(num)`
* **Name**
  * `first_name()`
  * `last_name()`
  * `name()`
  * `prefix()`
  * `suffix()`
  * `title()`
* **Team**
  * `creature()`
  * `name()`

## Thanks

[![Sponsored by Evil Martians](https://evilmartians.com/badges/sponsored-by-evil-martians.svg)](http://evilmartians.com/)

## TODO

* Add more generators
* Check performance
* Add documentation
* Promote library

## Troubleshooting

* If you get a message like the one below when you call `Faker.Address.city`,
you need to add `:faker` to your application's mix file, in the `applications`
function, as above.

``` elixir
** (FunctionClauseError) no function clause matching in Faker.Address.city_count/1
    lib/faker/address.ex:48: Faker.Address.city_count(nil)
    lib/faker/address.ex:41: Faker.Address.city/0
```

## Tools

Faker designed as lightweight library, because of it it can be easily used with
other tools.

## Templating

You can build templates for testing purposes with the
[Blacksmith](https://github.com/batate/blacksmith) project. See the Blacksmith
[readme](https://github.com/batate/blacksmith#readme) for details.

# [License](https://github.com/igas/faker/blob/master/LICENSE)

Released under the MIT License.
