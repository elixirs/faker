defmodule Faker.UtilTest do
  use ExUnit.Case, async: true

  import Faker.Util

  doctest Faker.Util

  @iterations 10_000

  test "digit/0" do
    Stream.repeatedly(&digit/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert generated_value in ~w/0 1 2 3 4 5 6 7 8 9/
    end)
  end

  test "lower_letter/0" do
    Stream.repeatedly(&lower_letter/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert generated_value in ~w/a b c d e f g h i j k l m n o p q r s t u v w x y z/
    end)
  end

  test "upper_letter/0" do
    Stream.repeatedly(&upper_letter/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert generated_value in ~w/A B C D E F G H I J K L M N O P Q R S T U V W X Y Z/
    end)
  end

  test "letter/0" do
    Stream.repeatedly(&letter/0)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert generated_value in ~w/a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z/
    end)
  end

  test "cycle/2" do
    list = ~w/a b c/
    my_cycle = Faker.Util.cycle_start(list)

    Stream.repeatedly(fn ->
      Stream.repeatedly(fn -> Faker.Util.cycle(my_cycle) end) |> Enum.take(3)
    end)
    |> Enum.take(@iterations)
    |> Enum.each(fn generated_value ->
      assert Enum.sort(generated_value) == list
    end)
  end
end
