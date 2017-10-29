# Change Log

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/).

Change log itself follows [Keep a CHANGELOG](http://keepachangelog.com) format.

## Unreleased

### Added

* Customizable random functions [@igas][]

### Changed

### Deprecated

### Removed

### Fixed

### Security

## 0.9.0

### Added

* `Faker.Pizza` [@lauraannwilliams][]
* Credo on CI [@igas][]
* Dialyxir on CI [@igas][]
* `Faker.String.base64/0` and `Faker.String.base64/1` [@yordis][]

### Changed

### Deprecated

### Removed

* Elixir < 1.3 support [@igas][]

### Fixed

* Credo issues [@lrosa007][]

### Security

## 0.8.0

### Added

* `Faker.Internet.UserAgent` [@devshane][]
* `Faker.Superhero` [@orieken][]
* `Faker.Code.iban` [@tobyhinloopen][]
* `Faker.Beer` [@orieken][]
* `Faker.Date` [@tobyhinloopen][]
* `Faker.Date.between` [@anthonator][]
* `Faker.DateTime` [@anthonator][]
* `Faker.NaiveDateTime` [@anthonator][]
* `Faker.Nato` [@petehamilton][]
* `Faker.Pokemon` [@orieken][]
* `Faker.App.semver` [@wojtekmach][]
* `Faker.Internet.slug` [@anthonator][]
* credo [@igas][]

### Changed

* Underlaying data structure changed to maps to improve performance [@igas][]
* Improved `Faker.Beer` usage [@tbash][]

### Deprecated

### Removed

* Usage docs duplication [@piton4eg][]

### Fixed

* Elixir 1.4 deprecation warnings [@igas][]

### Security

## 0.7.0

* Upgrade to latest versions [@belaustegui][]

* Documentation improvements [@GesJeremie][]

* `Faker.Color.En.name/0` & `Faker.Color.En.fancy_name/0` [@efexen][]

* `Faker.Phone.EnGb.cell_number/0` [@igas][]

* `Faker.Phone.EnGb.landline_number/0` [@johnhamelink][]

* `Faker.Phone.EnGb.mobile_number/0` [@igas][]

* `Faker.Phone.EnGb.number/0` [@igas][]

* `Faker.Phone.EnUs` [@devshane][]

## 0.6.0

* Most of functions covered by specs and docs now

* Removed JSON programming and poison dependency [@saulecabrera][],
  [@vforvova][]

* Add Faker.Shakespeare [@adam-wanninger][]

* Fix SSL issues in `Internet.image_url/0` [@zmoshansky][]

* Improve tests [@lowks][]

* Elixir 1.1 support

* Add `Faker.App` with `author/0`, `name/0` and `version/0`

* Add `Faker.Address.country_code/0`

* Add `Faker.Bitcoin` with `address/0` and `address/1`

* Add `Faker.Color` with `rgb_hex/0` and `rgb_decimal/0`

## 0.5.1

* Add erlang 18 support

* Add issn check digit

## 0.5.0

* Add `Faker.start/0` and `Faker.start/1`

## 0.4.1

* Add `Faker.Internet.url/0` and `Faker.Internet.image_url/0` functions

## 0.4.0

* Elixir 1.0.0

* ISBN check digit algorithm [@vforvova][]

* Move from JSEX to Poison

## 0.3.2

* Fixed function heads [@jarednorman][]

## 0.3.1

* Elixir 0.14.2

## 0.3.0

* Elixir v0.14 support

* Add Travis CI

* Remove `Faker.Config`

* Remove `Faker.Supervisor`

* Change dependency to hex packages

* Added `Faker.Internet`

  * `domain_name/0`

  * `domain_suffix/0`

  * `domain_word/0`

  * `email/0`

  * `free_email/0`

  * `free_email_service/0`

  * `ip_v4_address/0`

  * `ip_v6_address/0`

  * `mac_address/0`

  * `safe_email/0`

  * `user_name/0`

* Added `Faker.Company`

  * `bs/0`

  * `bullshit/0`

  * `bullshit_prefix/0`

  * `bullshit_suffix/0`

  * `buzzword/0`

  * `buzzword_prefix/0`

  * `buzzword_suffix/0`

  * `catch_phrase/0`

  * `name/0`

  * `suffix/0`

## 0.2.0

* Added `Faker.Team`

  * `name/0`

  * `creature/0`

[@adam-wanninger]: https://github.com/adam-wanninger
[@belaustegui]: https://github.com/belaustegui
[@devshane]: https://github.com/devshane
[@efexen]: https://github.com/efexen
[@GesJeremie]: https://github.com/GesJeremie
[@igas]: https://github.com/igas
[@jarednorman]: https://github.com/jarednorman
[@johnhamelink]: https://github.com/johnhamelink
[@lowks]: https://github.com/lowks
[@orieken]: https://github.com/orieken
[@petehamilton]: https://github.com/petehamilton
[@piton4eg]: https://github.com/piton4eg
[@saulecabrera]: https://github.com/saulecabrera
[@tbash]: https://github.com/tbash
[@tobyhinloopen]: https://github.com/tobyhinloopen
[@vforvova]: https://github.com/vforvova
[@wojtekmach]: https://github.com/wojtekmach
[@zmoshansky]: https://github.com/zmoshansky
[@anthonator]: https://github.com/anthonator
[@yordis]: https://github.com/yordis
[@lauraannwilliams]: https://github.com/lauraannwilliams
