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