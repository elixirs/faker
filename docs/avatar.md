### Faker.Avatar

```elixir
Faker.Avatar.image_url #=> "http://robohash.org/set_set3/bgset_bg2/qw6c1iLy6JM"

Faker.Avatar.image_url('a-simple-slug') #=> "http://robohash.org/a-simple-slug"

Faker.Avatar.image_url(200, 200) #=> "http://robohash.org/set_set1/bgset_bg2/4sA8?size=200x200"

Faker.Avatar.image_url('a-simple-slug', 200, 200) #=> "http://robohash.org/a-simple-slug?size=200x200"
```
