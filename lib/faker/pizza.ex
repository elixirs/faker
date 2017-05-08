defmodule Faker.Pizza do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating Pizza related data in English
  """

  @doc """
  Returns a list with a random number of pizzas (in between the specified
  range)
  If no range is specified it defaults to 2..5
  """
  @spec pizzas(Range.t) :: list(String.t)
  def pizzas(range \\ %Range{first: 2, last: 5})

  def pizzas(%Range{first: first, last: last}) do
    pizzas(:crypto.rand_uniform(first, last + 1))
  end

  @doc """
  Returns a specified number of pizzas as a list
  """
  @spec pizzas(integer) :: list(String.t)
  def pizzas(num) do
    Stream.repeatedly(&pizza/0)
    |> Enum.take(num)
  end

  @doc """
  Returns a pizza
  """
  @spec pizza() :: String.t
  def pizza, do: pizza(:crypto.rand_uniform(1, 31))
  defp pizza(n) when n <= 5, do: "#{size_or_inches()} with #{toppings_and(n)}"
  defp pizza(n) when n <= 10, do: "#{size_or_inches()} #{style()} with #{toppings_and(n - 5)}"
  defp pizza(n) when n <= 15, do: "#{size_or_inches()} #{style()} #{combo()}"
  defp pizza(_n), do: "#{size_or_inches()} #{combo()}"

  @doc """
  Returns a list with a random number of toppings (in between the specified
  range)
  If no range is specified it defaults to 2..5
  """
  @spec toppings(Range.t) :: list(String.t)
  def toppings(range \\ %Range{first: 2, last: 5})

  def toppings(%Range{first: first, last: last}) do
    toppings(:crypto.rand_uniform(first, last + 1))
  end

  @doc """
  Returns a specified number of toppings as a list
  """
  @spec toppings(integer) :: list(String.t)
  def toppings(num) do
    Stream.repeatedly(&topping/0)
    |> Enum.take(num)
  end

  @doc """
  Returns a string with a random number of toppings (in between the specified
  range). "And" will appear before the last topping, along with an Oxford comma.
  If no range is specified it defaults to 2..5
  """
  @spec toppings_and(Range.t) :: list(String.t)
  def toppings_and(range \\ %Range{first: 2, last: 5})

  def toppings_and(%Range{first: first, last: last}) do
    toppings_and(:crypto.rand_uniform(first, last + 1))
  end

  @doc """
  Returns a specified number of toppings as a string, with an "and" before the last topping
  """
  @spec toppings_and(integer) :: [char]
  def toppings_and(num) do
    num
    |> toppings()
    |> add_and
  end

  @doc """
  Converts a list to a string, with "and" before the last item
  """
  @spec add_and(list) :: [char]
  defp add_and([single]), do: single
  defp add_and([first, second]), do: "#{first} and #{second}"
  defp add_and([first | rest]), do: Enum.join(rest, ", ") <> ", and #{first}"

  @doc """
  Returns a random cheese, meat or vegetarian topping
  """
  @spec topping() :: [char]
  def topping, do: topping(:crypto.rand_uniform(1, 8))
  defp topping(1), do: cheese()
  defp topping(2), do: sauce()
  defp topping(count) when count <= 5, do: meat()
  defp topping(count), do: vegetable()

  @doc"""
  Returns a Pizza Restaurant string
  """
  @spec company() :: String.t
  sampler :company, ["New York Style Pizza Co", "Chicago Deep Dish", "Pizza the Hutt", "Mystic Pizza", "Bob's Pizza-Burgers", "Only Cheese Pizzas", "California Style Pizzas", "Thin Crust or Bust", "Family Bros. Pizza", "Pizza Planet", "Polmieri Pizzeria", "Cheese E. Sneezers", "Mona Pizza", "J. Maggio's Pizza", "Pizza De Roma", "Dinosaur Pizza", "Pizza Potamus", "Pizza Forest", "Pizza This..", "Little Nero's Pizza", "Freddy Fazbear's Pizza", "The Pizza Hole", "Bloaty’s Pizza Hog", "Guidio’s Pizza Palace", "CosaNostra Pizza", "Gamer Pizzas", "Jubilee Pizza", "Maria’s Pasta and Pizza", "Nemo’s Pizza", "Paisanos", "Papa Plastique", "Pete’s Pizza", "Pizza Clown", "Pizza Face Pizza", "Pizza on a Stick", "Pizza Joe’s", "Pizza Pig-Out", "Pizza Shack", "Ron’s Pizza Hovel", "Sid’s Pizza Parlor"]

  @doc """
  Returns a pizza style
  """
  @spec style() :: String.t
  sampler :style, ["Wood Fired", "Thick Crust", "Thin Crust", "New York Style", "Deep Dish", "Stuffed Crust", "Detroit-style", "Kosher", "Gluten-Free Quinoa", "Flatbread", "Sweet Potato Crust", "Grilled", "New Haven Style", "Greek", "Sicilian Style", "Pizza Rustica", "Tomatoe Pie", "Pizza Bread", "Neapolitan", "Deep Fried Pizza", "Gluten-Free Quinoa Corn", "Pizza Frittata", "Hand Tossed", "Multigrain", "Whole Wheat", "Fugazza", "Spooning Pizza"]

  @doc """
  Returns a sauce string
  """
  @spec sauce() :: String.t
  sampler :sauce, ["Soy Miso Sauce", "Masala Sauce", "Classic Tomato Sauce", "Spicy Tomato Sauce", "Clam Sauce", "Bechamel (White) Sauce", "Pesto Sauce", "BBQ Sauce", "Salsa", "Passata Sauce", "Chipolte Sauce", "Mango Sauce", "Siracha Sauce", "Buffalo Sauce", "Tomatoe Garlic Sauce", "Butter Chicken Sauce", "Olive Oil", "Hummus", "White Garlic Sauce", "Marinara Sauce", "Tapenade", "Romesco Sauce", "Chimichurri Sauce", "Gravy", "Aoili", "Hoisin Sauce", "Chili Sauce", "Sweet Chili Sauce", "Gremolata", "Mustard", "Curry", "Alfredo Sauce", "Zaatar"]

  @doc """
  Returns a cheese string
  """
  @spec cheese() :: String.t
  sampler :cheese, ["Mozzarella", "Cheddar", "Feta", "Secret Cheese Blend", "4 Cheese Blend", "Buffalo Mozzarella", "Asiago", "Romano", "Provolone", "Emmental", "Ricotta", "Marscapone", "Swiss", "Parmesan", "Smoked Mozzarella", "Blue (Bleu) Cheese", "Soy Cheese", "Lactose Free Cheese", "Whole Milk Mozzarella", "Burrata", "Goat Cheese", "Cashew Cheese", "Fior di latte", "Paneer", "Cheese Curds", "Gouda", "Fontina", "Gorgonzola", "Queso Fresco", "Crème fraîch"]

  @doc """
  Returns a meat string
  """
  @spec meat() :: String.t
  sampler :meat, ["Anchovies", "Bacon", "Pulled Pork", "Buffalo Chicken", "Canadian Bacon", "Capicola", "Chicken", "Chorizo", "Clam", "Duck", "Eel", "Egg", "Gyro", "Ham", "Hamburger", "Hot Dogs", "Mackerel", "Meatballs", "Mutton", "Pepperoni", "Philly Steak", "Prosciutto", "Reindeer", "Salami", "Salmon", "Sausage", "Scallops", "Shellfish", "Shrimps", "Smoked Salmon", "Squid", "Steak", "Venison"]

  @doc """
  Returns a vegetable string
  """
  @spec vegetable() :: String.t
  sampler :vegetable, ["Artichoke Hearts", "Arugula", "Banana", "Banana Peppers", "Basil", "Black Olives", "Broccoli", "Capers", "Caramelised Onions", "Cherry Tomatoes", "Coconut", "Eggplant", "Garlic", "Green Olives", "Green Peas", "Green Peppers", "Habanero Peppers", "Jalapeños", "Mango", "Mushrooms", "Onions", "Oysters", "Peperoncini", "Pickled Ginger", "Pineapple", "Potatoes", "Red Onion", "Red Peppers", "Sauerkraut", "Spinach", "Sun-Dried Tomatoes", "Sweet Corn", "Sweet Potato", "Zucchini"]

  @doc """
  Returns a size string
  """
  @spec combo() :: Strint.t
  sampler :combo, ["Africana", "All Dressed", "Bacon Cheeseburger ", "BBQ Chicken", "Bianca ", "Bolognese", "Breakfast", "Buffalo Chicken", "Canadian", "Caprese", "Capricciosa", "Capricciosa ", "Cheese", "Chicken Pesto", "Ciao-ciao", "Curry Banana", "Double Dutch", "Fajita", "Fig and Goat Cheese", "Four Seasons", "Frutti di mare", "Funghi", "Grandma", "Greek", "Grilled Vegetarian", "Hawaiian", "Hot & Spicy", "Italian Deli", "Kebab", "Loaded", "Maltija", "Margherita", "Meat Feast", "Meat Lovers", "Meatball ", "Mockba", "Onion & Gorgonzola", "Pepperoni & Mushroom", "Perogie", "Pesto Chicken", "Poutine", "Prociutto Arugala", "Pugliese", "Quattro Formaggi", "Quattro Formaggio", "Quattro stagioni", "Romana", "Shrimp Club", "Smoked Salmon & Goat Cheese", "Supreme", "Taco", "Thai Chicken", "Vegetarian Lovers", "Vegetariana", "Veggie Korma", "Viennese"]

  @doc """
  Returns a random size or inches
  """
  @spec size_or_inches() :: [char]
  def size_or_inches, do: size_or_inches(:crypto.rand_uniform(1, 3))
  defp size_or_inches(1), do: size()
  defp size_or_inches(2), do: inches()

  @doc """
  Returns a size string
  """
  @spec size() :: Strint.t
  sampler :size, ["Personal", "Small", "Medium", "Large", "Extra-Large", "Family"]

  @doc """
  Returns a inches string
  """
  @spec inches() :: Strint.t
  sampler :inches, ["9\"", "10\"", "11\"", "12\"", "14\"", "16\"", "18\"", "20\"", "26\"", "30\""]

end
