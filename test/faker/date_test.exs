defmodule DateTest do
  use ExUnit.Case, async: true
  use Timex

  test "date_of_birth/0" do
    assert age(Faker.Date.date_of_birth) in 18..99
  end

  test "date_of_birth/1 with exact age" do
    assert age(Faker.Date.date_of_birth(1)) == 1
  end

  test "date_of_birth/1 with age range" do
    assert age(Faker.Date.date_of_birth(12..99)) in 12..99
  end

  test "forward/1" do
    forwarded_date = Faker.Date.forward(10)
    assert Date.compare(forwarded_date, Date.utc_today) == :gt
    assert Timex.diff(forwarded_date, Timex.today, :days) in 1..10
  end

  test "backward/1" do
    backward_date = Faker.Date.backward(10)
    assert Date.compare(backward_date, Date.utc_today) == :lt
    assert Timex.diff(Timex.today, backward_date, :days) in 1..10
  end

  test "between/2" do
    from_date = ~D[2017-01-01]
    to_date = ~D[2017-01-10]
    between_date = Faker.Date.between(from_date, to_date)
    assert Date.compare(between_date, from_date) in [:gt, :eq]
    assert Date.compare(between_date, to_date) in [:lt, :eq]
  end

  test "age/1 returns valid age" do
    assert 26 == age(%Date{year: 1990, month: 9, day: 1}, %Date{year: 2017, month: 8, day: 1})
  end

  defp age(date, today \\ Timex.today) do
    Timex.diff today, date, :years
  end
end
