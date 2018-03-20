### Faker.Date

```elixir
Faker.Date.date_of_birth #=> ~D[1961-05-09]

Faker.Date.date_of_birth(1) #=> ~D[2015-12-06]

Faker.Date.date_of_birth(10..19) #=> ~D[2004-05-15]

Faker.Date.forward(4) #=> ~D[2016-12-25]

Faker.Date.backward(4) #=> ~D[2016-12-20]

Faker.Date.between(~D[2016-12-20], ~D[2016-12-25]) #=> ~D[2016-12-23]
```
