# Faker [work in progress]

**Faker** is pure [Elixir](http://elixir-lang.org/) library for generating fake
data. Made for ***experiments*** and inspired by:

* Perl [Data::Faker](http://search.cpan.org/~wsheldahl/Data-Faker/lib/Data/Faker.pm)
* Ruby [faker](https://github.com/stympy/faker)
* Ruby [ffaker](https://github.com/EmmanuelOga/ffaker)
* PHP [Faker](https://github.com/fzaninotto/Faker)
* Python [faker](https://github.com/joke2k/Faker)
* Erlang [fakerl](https://github.com/mawuli-ypa/fakerl)

# Generators / Providers

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

# Thanks

* To the [Evil Martians](http://evilmartians.com/) you are the best team ever.

# TODO

* Add more generators
* Check performance
* Add tests
* Add documentation
* Promote library
* ...
* Profit!

# [License](https://github.com/igas/faker/blob/master/LICENSE)

Released under the MIT License.
