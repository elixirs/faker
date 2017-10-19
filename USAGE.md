- [Faker.Address](#fakeraddress)
- [Faker.App](#fakerapp)
- [Faker.Avatar](#fakeravatar)
- [Faker.Bitcoin](#fakerbitcoin)
- [Faker.Code](#fakercode)
- [Faker.Color](#fakercolor)
- [Faker.Commerce](#fakercommerce)
- [Faker.Company](#fakercompany)
- [Faker.Date](#fakerdate)
- [Faker.DateTime](#fakerdatetime)
- [Faker.NaiveDateTime](#fakernaivedatetime)
- [Faker.File](#fakerfile)
- [Faker.Internet](#fakerinternet)
- [Faker.Internet.UserAgent](#fakerinternetuseragent)
- [Faker.Lorem](#fakerlorem)
- [Faker.Lorem.Shakespeare](#fakerloremshakespeare)
- [Faker.Name](#fakername)
- [Faker.Phone](#fakerphone)
- [Faker.Team](#fakerteam)
- [Faker.Pokemon](#fakerpokemon)
- [Faker.Beer](#fakerbeer)
- [Faker.Superhero](#fakersuperhero)
- [Faker.Pizza](#fakerpizza)

### Faker.Address

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

```elixir
Faker.App.author #=> "Angie Graham IV"

Faker.App.name #=> "Fixflex"

Faker.App.version #=> "4.3"

Faker.App.semver #=> "0.1.6"

Faker.App.semver(allow_pre: true, allow_build: true) #=> "1.0.0-rc.1+001"
```

### Faker.Avatar

```elixir
Faker.Avatar.image_url #=> "http://robohash.org/set_set3/bgset_bg2/qw6c1iLy6JM"

Faker.Avatar.image_url('a-simple-slug') #=> "http://robohash.org/a-simple-slug"

Faker.Avatar.image_url(200, 200) #=> "http://robohash.org/set_set1/bgset_bg2/4sA8?size=200x200"

Faker.Avatar.image_url('a-simple-slug', 200, 200) #=> "http://robohash.org/a-simple-slug?size=200x200"
```

### Faker.Bitcoin

```elixir
Faker.Bitcoin.address #=> "15SYCAaXvxosAmndphQthDok7SFTQ7Dddc"

Faker.Bitcoin.address(:testnet) #=> "n1nEhSeHJiURtEymbtrV1Kv97C8BN6mBUP"
```

### Faker.Code

```elixir
Faker.Code.iban #=> "IT34K5534420705QL3FT3SE7OTG"

Faker.Code.iban "NL" #=> "NL90FWAC8717013067"

Faker.Code.iban ["NL", "BE"] #=> "BE22587804301223"

Faker.Code.iban "NL", ["ABNA"] #=> "NL39ABNA4314302905"

Faker.Code.isbn #=> "462033670X"

Faker.Code.isbn10 #=> "0762633026"

Faker.Code.isbn13 #=> "9794438325491"

Faker.Code.issn #=> "08979375"
```

### Faker.Color

```elixir
Faker.Color.rgb_decimal #=> {55, 2, 76}

Faker.Color.rgb_hex #=> "07E026"
```

### Faker.Commerce

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

### Faker.Date

```elixir
Faker.Date.date_of_birth #=> ~D[1961-05-09]

Faker.Date.date_of_birth(1) #=> ~D[2015-12-06]

Faker.Date.date_of_birth(10..19) #=> ~D[2004-05-15]

Faker.Date.forward(4) #=> ~D[2016-12-25]

Faker.Date.backward(4) #=> ~D[2016-12-20]

Faker.Date.between(~D[2016-12-20], ~D[2016-12-25]) #=> ~D[2016-12-23]
```

### Faker.DateTime

```elixir
Faker.DateTime.forward(4)
#=> %DateTime{calendar: Calendar.ISO, day: 25, hour: 6,
#=>  microsecond: {922180, 6},  minute: 2, month: 12, second: 17,
#=>  std_offset: 0, time_zone: "Etc/UTC", utc_offset: 0, year: 2016,
#=>  zone_abbr: "UTC"}

Faker.DateTime.backward(4)
#=> %DateTime{calendar: Calendar.ISO, day: 20, hour: 6,
#=>  microsecond: {922180, 6},  minute: 2, month: 12, second: 17,
#=>  std_offset: 0, time_zone: "Etc/UTC", utc_offset: 0, year: 2016,
#=>  zone_abbr: "UTC"}

Faker.DateTime.between(~N[2016-12-20 00:00:00], ~N[2016-12-25 00:00:00])
#=> %DateTime{calendar: Calendar.ISO, day: 22, hour: 7,
#=>  microsecond: {753572, 6},  minute: 56, month: 12, second: 26,
#=>  std_offset: 0, time_zone: "Etc/UTC", utc_offset: 0, year: 2016,
#=>  zone_abbr: "UTC"}
```

### Faker.NaiveDateTime

```elixir
Faker.NaiveDateTime.forward(4) #=> ~N[2016-12-25 06:02:17.922180]

Faker.NaiveDateTime.backward(4) #=> ~N[2016-12-20 06:02:17.922180]

Faker.NaiveDateTime.between(~N[2016-12-20 00:00:00], ~N[2016-12-25 00:00:00]) #=> ~N[2016-12-23 06:02:17.922180]
```

### Faker.File

```elixir
Faker.File.file_extension #=> "mp3"

Faker.File.file_extension(:video) #=> "webm"

Faker.File.file_name #=> "voluptaes.jpg"

Faker.File.file_name(:text) #=> "reo.json"

Faker.File.mime_type #=> "application/atom+xml"

Faker.File.mime_type(:image) #=> "image/gif"
```

### Faker.Internet

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

Faker.Internet.slug #=> "lorem-ipsum"

Faker.Internet.slug(["foo", "bar"]) #=> "foo-bar"

Faker.Internet.slug(["foo", "bar"], ["."]) #=> "foo.bar"
```

### Faker.Internet.UserAgent

```elixir
Faker.Internet.UserAgent.bot_user_agent #=> "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"

Faker.Internet.UserAgent.desktop_user_agent #=> "Mozilla/5.0 (X11; CrOS x86_64 8172.45.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.64 Safari/537.36"

Faker.Internet.UserAgent.ereader_user_agent #=> "Mozilla/5.0 (Linux; U; en-US) AppleWebKit/528.5+ (KHTML, like Gecko, Safari/528.5+) Version/4.0 Kindle/3.0 (screen 600x800; rotate)"

Faker.Internet.UserAgent.game_console_user_agent #=> "Mozilla/5.0 (PlayStation 4 3.11) AppleWebKit/537.73 (KHTML, like Gecko)"

Faker.Internet.UserAgent.mobile_user_agent #=> "Mozilla/5.0 (Linux; Android 5.1.1; SM-G928X Build/LMY47X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36"

Faker.Internet.UserAgent.set_top_user_agent #=> "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus Player Build/MMB29T)"

Faker.Internet.UserAgent.tablet_user_agent #=> "Mozilla/5.0 (Linux; Android 5.1.1; SHIELD Tablet Build/LMY48C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Safari/537.36"

Faker.Internet.UserAgent.user_agent #=> "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"
```

### Faker.Lorem

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

```elixir
Faker.Lorem.Shakespeare.as_you_like_it #=> "How bitter a thing it is to look into happiness through another man's eyes!"

Faker.Lorem.Shakespeare.hamlet #=> "And it must follow, as the night the day, thou canst not then be false to any man."

Faker.Lorem.Shakespeare.king_richard_iii #=> "Now is the winter of our discontent."

Faker.Lorem.Shakespeare.romeo_and_juliet #=> "O! she doth teach the torches to burn bright."
```

### Faker.Name

```elixir
Faker.Name.first_name #=> "Iva"

Faker.Name.last_name #=> "Veum"

Faker.Name.name #=> "Mr. Cristian Johnston"

Faker.Name.prefix #=> "Miss"

Faker.Name.suffix #=> "III"

Faker.Name.title #=> "Chief Brand Planner"
```

### Faker.Phone
Note: Some numbers are replaced with x's to prevent any tomfoolery.

```elixir
Faker.Phone.EnUs.phone #=> "555-555-xxxx"

Faker.Phone.EnUs.area_code #=> "301"

Faker.Phone.EnUs.area_code #=> "803"

Faker.Phone.EnUs.extension #=> "1686"

Faker.Phone.EnUs.extension(5) #=> "16865"

Faker.Phone.EnUs.subscriber_number #=> "6393"

Faker.Phone.EnGb.number #=> "+4433138xxxx"

Faker.Phone.EnGb.cell_number #=> "07464 180xxx"

Faker.Phone.EnGb.landline_number #=> "+44227030xxx"

Faker.Phone.EnGb.mobile_number #=> "07866 45xxxx"
```

### Faker.Team

```elixir
Faker.Team.creature #=> "chickens"

Faker.Team.name #=> "Delaware ants"
```

### Faker.Pokemon

```elixir
Faker.Pokemon.name #=> "Pikachu"

Faker.Pokemon.location #=> "Pallet Town"
```

### Faker.Beer

```elixir
Faker.Beer.name #=> "Hercules Double IPA"

Faker.Beer.style #=> "Belgian Strong Ale"

Faker.Beer.hop #=> "Equinox"

Faker.Beer.yeast #=> "2278 - Czech Pils"

Faker.Beer.malt #=> "Rye malt"

Faker.Beer.ibu #=> "40 IBU"

Faker.Beer.alcohol #=> "6.3%"

Faker.Beer.blg #=> "18.5°Blg"
```

### Faker.Superhero

```elixir
Faker.Superhero.name #=> "Magnificent Shatterstar"

Faker.Superhero.power #=> "Photokinesis"
```

### Faker.Pizza

```elixir

Faker.Pizza.pizzas(2..3) # => ["Medium Thai Chicken", "26\" with Eel and Salami", "Large with Squid, Duck, Meatballs, and Classic Tomato Sauce"]

Faker.Pizza.pizzas(2) # => ["30\" with Alfredo Sauce, Scallops, Lactose Free Cheese, and Cherry Tomatoes", "Family Deep Fried Pizza Double Dutch"]

Faker.Pizza.pizza() # => "Personal Thin Crust Canadian"

Faker.Pizza.toppings(2..3) # => ["Banana", "Spinach", "Chicken"]

Faker.Pizza.toppings(4) # => ["Bacon", "Pineapple", "Artichoke Hearts", "Broccoli"]

Faker.Pizza.topping() # => "Olives"

Faker.Pizza.company() # => "Pizza the Hutt"

Faker.Pizza.style() # => "New Haven Style"

Faker.Pizza.sauce() # => "Marinara Sauce"

Faker.Pizza.cheese() # => "Emmental"

Faker.Pizza.meat() # => "Pepperoni"

Faker.Pizza.vegetable() # => "Artichoke Hearts"

Faker.Pizza.combo() # => "Supreme"

Faker.Pizza.size_or_inches() # => "Extra-Large"

Faker.Pizza.size() # => "Personal"

Faker.Pizza.inches() # => "14\""

```

### Faker.String

```elixir
Faker.String.base64 #=> "JfuzivfU"
```

### Faker.Cat

```elixir
# Random cat name
Faker::Cat.name #=> "Shadow"

# Random cat breed
Faker::Cat.breed #=> "British Semipi-longhair"

# Random cat registry
Faker::Cat.registry #=> "American Cat Fanciers Association"
```
