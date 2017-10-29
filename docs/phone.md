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
