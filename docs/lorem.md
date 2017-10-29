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
