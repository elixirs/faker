defmodule Faker.DateTest do
  use ExUnit.Case, async: true

  doctest Faker.Date

  test "date_of_birth/0" do
    assert age(Faker.Date.date_of_birth()) in 18..99
  end

  test "date_of_birth/1 with exact age" do
    assert age(Faker.Date.date_of_birth(1)) == 1
  end

  test "date_of_birth/1 with age range" do
    assert age(Faker.Date.date_of_birth(12..99)) in 12..99
  end

  test "forward/1" do
    forwarded_date = Faker.Date.forward(10)
    assert %Date{year: year, month: month, day: day} = forwarded_date
    assert now().year < year || now().month < month || now().day < day
  end

  test "backward/1" do
    backward_date = Faker.Date.backward(10)
    assert %Date{year: year, month: month, day: day} = backward_date
    assert now().year > year || now().month > month || now().day > day
  end

  test "between/2" do
    from_date = ~D[2017-01-01]
    to_date = ~D[2017-01-10]
    between_date = Faker.Date.between(from_date, to_date)
    assert %Date{year: year, month: month, day: day} = between_date
    assert from_date.year <= year || from_date.month <= month || from_date.day <= day
    assert to_date.year >= year || from_date.month >= month || to_date.day >= day
  end

  defp age(%Date{year: year, month: month, day: day}) do
    %Date{year: current_year, month: current_month, day: current_day} = now()
    min_age = current_year - year - 1

    had_birthday_this_year =
      current_month > month || (current_month == month && current_day >= day)

    if had_birthday_this_year,
      do: min_age + 1,
      else: min_age
  end

  defp now do
    DateTime.utc_now() |> DateTime.to_date()
  end
end
