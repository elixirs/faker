# Faker [![Version](https://img.shields.io/hexpm/v/faker.svg?style=flat-square)](https://hex.pm/packages/faker)[![License](https://img.shields.io/hexpm/l/faker.svg?style=flat-square)](https://github.com/igas/faker/blob/master/LICENSE)[![Build Status](https://img.shields.io/travis/igas/faker.svg?style=flat-square)](https://travis-ci.org/igas/faker)[![Issues](https://img.shields.io/github/issues/igas/faker.svg?style=flat-square)](https://github.com/igas/faker/issues)[![Downloads](https://img.shields.io/hexpm/dt/faker.svg?style=flat-square)](https://hex.pm/packages/faker)[![Donation](https://img.shields.io/gratipay/igas.svg?style=flat-square)](https://gratipay.com/igas/)

**Faker** is a pure [Elixir](http://elixir-lang.org/) library for generating
fake data.

Inspired by:

* Ruby [faker](https://github.com/stympy/faker)
* Ruby [ffaker](https://github.com/ffaker/ffaker)
* PHP [Faker](https://github.com/fzaninotto/Faker)
* Python [faker](https://github.com/joke2k/Faker)
* Erlang [fakerl](https://github.com/piesie/fakerl)
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

You need to start `:faker` application, but due to the many usages of fake data,
(seed database, tests, etc) there's no right place to do it. For example, if you
want to use it in tests, just add `Faker.start` to `test/test_helper.exs`, then,
use any function described in the [documentation](http://hexdocs.pm/faker/), like `Faker.Name.name`
to generate a random name.

- [Faker.Address](#fakeraddress)
- [Faker.App](#fakerapp)
- [Faker.Avatar](#fakeravatar)
- [Faker.Bitcoin](#fakerbitcoin)
- [Faker.Code](#fakercode)
- [Faker.Color](#fakercolor)
- [Faker.Commerce](#fakercommerce)
- [Faker.Company](#fakercompany)
- [Faker.File](#fakerfile)
- [Faker.Internet](#fakerinternet)
- [Faker.Lorem](#fakerlorem)
- [Faker.Lorem.Shakespeare](#fakerloremshakespeare)
- [Faker.Name](#fakername)
- [Faker.Team](#fakerteam)


### Faker.Address
-----------------

```elixir
Faker.Address.building_number #=> "99"

Faker.Address.city #=> "Palmaberg"

Faker.Address.city_prefix #=> "West"

Faker.Address.city_suffix #=> "ton"

Faker.Address.country #=> "Belize"

Faker.Address.country_code #=> "RO"

Faker.Address.latitude #=> "45.41060470043868"

Faker.Address.longitude #=> "-84.34087878300942"

Faker.Address.postcode #=> "25062"

Faker.Address.secondary_address #=> "Suite 097"

Faker.Address.state #=> "Massachusetts"

Faker.Address.state_abbr #=> "AK"

Faker.Address.street_address #=> "20 Herman Port"

Faker.Address.street_address(true) #=> "6379 Greenholt Turnpike Suite 779"

Faker.Address.street_name #=> "Derek Center"

Faker.Address.street_suffix #=> "Rapid"

Faker.Address.time_zone #=> "Asia/Novosibirsk"

Faker.Address.zip #=> "84084-8276"

Faker.Address.zip_code #=> "24838"


```

### Faker.App
-----------------

```elixir

Faker.App.author #=> "Angie Graham IV"

Faker.App.name #=> "Fixflex"

Faker.App.version #=> "4.3.3"


```


### Faker.Avatar
-----------------

```elixir

Faker.Avatar.image_url #=> "http://robohash.org/set_set3/bgset_bg2/qw6c1iLy6JM"

Faker.Avatar.image_url('a-simple-slug') #=> "http://robohash.org/a-simple-slug"

Faker.Avatar.image_url(200, 200) #=> "http://robohash.org/set_set1/bgset_bg2/4sA8?size=200x200"

Faker.Avatar.image_url('a-simple-slug', 200, 200) #=> "http://robohash.org/a-simple-slug?size=200x200"


```

### Faker.Bitcoin
-----------------

```elixir

Faker.Bitcoin.address #=> "15SYCAaXvxosAmndphQthDok7SFTQ7Dddc"

Faker.Bitcoin.address(:testnet) #=> "n1nEhSeHJiURtEymbtrV1Kv97C8BN6mBUP"


```

### Faker.Code
-----------------

```elixir

Faker.Code.isbn #=> "462033670X"

Faker.Code.isbn10 #=> "0762633026"

Faker.Code.isbn13 #=> "9794438325491"

Faker.Code.issn #=> "08979375"

```

### Faker.Color
-----------------

```elixir

Faker.Color.rgb_decimal #=> {55, 2, 76}

Faker.Code.rgb_hex #=> "07E026"


```

### Faker.Color
-----------------

```elixir

Faker.Color.rgb_decimal #=> {55, 2, 76}

Faker.Code.rgb_hex #=> "07E026"


```


### Faker.Commerce
-----------------

```elixir

Faker.Commerce.color #=> "maroon"

Faker.Commerce.department #=> "Sports & Outdoors"

Faker.Commerce.price #=> "3.5"

Faker.Commerce.product_name #=> "Fantastic Chair"

Faker.Commerce.product_name_adjective #=> "Incredible"

Faker.Commerce.product_name_material #=> "Wooden"

Faker.Commerce.product_name_product #=> "Gloves"


```

### Faker.Company
-----------------

```elixir

Faker.Company.bs #=> "enable next-generation markets"

Faker.Company.bullshit #=> "value-added"

Faker.Company.bullshit_prefix #=> "recontextualize"

Faker.Company.bullshit_suffix #=> "technologies"

Faker.Company.buzzword #=> "composite"

Faker.Company.buzzword_prefix #=> "Up-sized"

Faker.Company.buzzword_suffix #=> "paradigm"

Faker.Company.catch_phrase #=> "Profound stable strategy""

Faker.Company.name #=> "Erdman, Rogahn and Bailey""

Faker.Company.suffix #=> "Group"

```

### Faker.File
-----------------

```elixir

Faker.File.file_extension #=> "mp3"

Faker.File.file_extension(:video) #=> "webm"

Faker.File.file_name #=> "voluptaes.jpg"

Faker.File.file_name(:text) #=> "reo.json"

Faker.File.mime_type #=> "application/atom+xml"

Faker.File.mime_type(:image) #=> "image/gif"

```

### Faker.Internet
-----------------

```elixir

Faker.Internet.domain_name #=> "tremblay.org"

Faker.Internet.domain_suffix #=> "info"

Faker.Internet.domain_word #=> "gerhold"

Faker.Internet.email #=> "tavares1993@oconner.biz"

Faker.Internet.free_email #=> "monroe.schaefer@yahoo.com"

Faker.Internet.free_email_service #=> "yahoo.com"

Faker.Internet.image_url #=> "https://dummyimage.com/846x223"

Faker.Internet.ip_v4_address #=> "3.147.154.132"

Faker.Internet.ip_v6_address #=> "382F:76D8:2AC7:8EFC:488E:7039:CA87:0DEA"

Faker.Internet.mac_address #=> "d2:35:c2:ea:f2:c1"

Faker.Internet.safe_email #=> "arvel1966@example.org"

Faker.Internet.url #=> "http://rohan.net"

Faker.Internet.user_name #=> "dee.ebert"

```

### Faker.Lorem
-----------------

```elixir

Faker.Lorem.characters(%Range{first: 1, last: 10}) #=> 'lHixS3So'

Faker.Lorem.paragraph(%Range{first: 1, last: 2}) #=> "Nemo labore enim rem qui praesentium totam non et aut. Beatae molestiae et fugit!"

Faker.Lorem.paragraphs(%Range{first: 1, last: 2}) #=> ["Placeat quos harum voluptatem quaerat quidem eveniet dolores laboriosam aut. Facilis fugiat fuga quo excepturi aut ratione aut sed! Nihil velit quis magni. Illo et et ducimus labore veritatis."]

Faker.Lorem.sentence(%Range{first: 1, last: 10}) #=> "Eum et et."

Faker.Lorem.sentence(%Range{first: 1, last: 10}) #=> "Id eius esse totam voluptas sapiente totam accusantium?"

Faker.Lorem.sentence(3, " & ") #=> "Cum eos harum & "

Faker.Lorem.word #=> "voluptas"

Faker.Lorem.words(%Range{first: 1, last: 8}) #=> ["sed", "rerum", "et", "alias", "aut"]

```


### Faker.Lorem.Shakespeare
-----------------

```elixir

Faker.Lorem.Shakespeare.as_you_like_it #=> "How bitter a thing it is to look into happiness through another man's eyes!"

Faker.Lorem.Shakespeare.hamlet #=> "And it must follow, as the night the day, thou canst not then be false to any man."

Faker.Lorem.Shakespeare.king_richard_iii #=> "Now is the winter of our discontent."

Faker.Lorem.Shakespeare.romeo_and_juliet #=> "O! she doth teach the torches to burn bright."

```

### Faker.Name
-----------------

```elixir

Faker.Name.first_name #=> "Iva"

Faker.Name.last_name #=> "Veum"

Faker.Name.name #=> "Mr. Cristian Johnston"

Faker.Name.prefix #=> "Miss"

Faker.Name.suffix #=> "III"

Faker.Name.title #=> "Chief Brand Planner"


```


### Faker.Team
-----------------

```elixir

Faker.Team.creature #=> "chickens"

Faker.Team.name #=> "Delaware ants"


```

## TODO

* Add more generators
* Check performance
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

Faker was designed as a lightweight library, that's why it can be easily used with
other tools.

## Templating

You can build templates for testing purposes with the
[Blacksmith](https://github.com/batate/blacksmith) project. See the Blacksmith
[readme](https://github.com/batate/blacksmith#readme) for details.

## Thanks

[![Sponsored by Evil Martians](https://evilmartians.com/badges/sponsored-by-evil-martians.svg)](https://evilmartians.com/)

# [License](https://github.com/igas/faker/blob/master/LICENSE)

Released under the MIT License.
