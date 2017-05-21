defmodule UtilTest do
  use ExUnit.Case, async: true

  test "pick/1" do
    list = ["a", "b", "c"]
    assert Faker.Util.pick(list) in list
  end

  test "list/2" do
    assert Faker.Util.list(3, &(&1)) == [0, 1, 2]
  end

  test "join/2" do
    assert Faker.Util.join(3, &(&1)) == "012"
  end

  test "join/3" do
    assert Faker.Util.join(3, "-", &(&1)) == "0-1-2"
  end

  test "digit/0" do
    assert Faker.Util.digit in ~w/0 1 2 3 4 5 6 7 8 9/
  end

  test "lower_letter/0" do
    assert Faker.Util.lower_letter in ~w/a b c d e f g h i j k l m n o p q r s t u v w x y z/
  end

  test "upper_letter/0" do
    assert Faker.Util.upper_letter in ~w/A B C D E F G H I J K L M N O P Q R S T U V W X Y Z/
  end

  test "letter/0" do
    assert Faker.Util.letter in ~w/a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z/
  end

  test "cycle/2" do
    list = ~w/a b c/
    my_cycle = Faker.Util.cycle_start(list)
    results = Stream.repeatedly(fn -> Faker.Util.cycle(my_cycle) end) |> Enum.take(3)
    assert Enum.sort(results) == list
  end

  test "format/1" do
    assert Faker.Util.format("foo %%3d bar") == "foo %3d bar"
    assert Faker.Util.format("%3d") =~ ~r/\d{3}/
    assert Faker.Util.format("%2d-%3d %a%A %2d%%") =~ ~r/\d{2}-\d{3} [a-z][A-Z] \d{2}%/
  end

  test "to_sentence/1" do
    assert Faker.Util.to_sentence([]) == ""
    assert Faker.Util.to_sentence(["a"]) == "a"
    assert Faker.Util.to_sentence(["a", "b"]) == "a and b"
    assert Faker.Util.to_sentence(["a", "a", "a"]) == "a, a, and a"
  end
end
