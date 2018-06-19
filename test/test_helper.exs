:ets.new(:seed_registry, [:named_table, :public])
Application.put_env(:faker, :random_module, Faker.Random.Test)
ExUnit.start()
