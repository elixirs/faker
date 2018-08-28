defmodule Faker.DateTimeTest do
  use ExUnit.Case, async: true

  test "forward/1" do
    now = DateTime.utc_now()
    forwarded_date = Faker.DateTime.forward(10)

    assert %DateTime{
             year: year,
             month: month,
             day: day,
             hour: hour,
             minute: minute,
             second: second,
             microsecond: microsecond
           } = forwarded_date

    assert now.year < year || now.month < month || now.hour < hour || now.minute < minute ||
             now.day < day || now.second < second || now.microsecond < microsecond
  end

  test "backward/1" do
    now = DateTime.utc_now()
    backward_date = Faker.DateTime.backward(10)

    assert %DateTime{
             year: year,
             month: month,
             day: day,
             hour: hour,
             minute: minute,
             second: second,
             microsecond: microsecond
           } = backward_date

    assert now.year > year || now.month > month || now.hour > hour || now.minute > minute ||
             now.day > day || now.second > second || now.microsecond > microsecond
  end

  test "between/2 for Date.t" do
    from_date = DateTime.utc_now() |> DateTime.to_date()
    to_date = Faker.DateTime.forward(50) |> DateTime.to_date()
    between_date = Faker.DateTime.between(from_date, to_date)
    assert %DateTime{year: year, month: month, day: day} = between_date
    assert from_date.year <= year || from_date.month <= month || from_date.day <= day
    assert to_date.year >= year || to_date.month >= month || to_date.day >= day
  end

  test "between/2 for NaiveDateTime.t" do
    from_datetime = DateTime.utc_now()
    from_date = from_datetime |> DateTime.to_date()
    from_time = from_datetime |> DateTime.to_time()
    {:ok, from_naivedatetime} = NaiveDateTime.new(from_date, from_time)

    to_datetime = Faker.DateTime.forward(50)
    to_date = to_datetime |> DateTime.to_date()
    to_time = to_datetime |> DateTime.to_time()
    {:ok, to_naivedatetime} = NaiveDateTime.new(to_date, to_time)

    between_date = Faker.DateTime.between(from_naivedatetime, to_naivedatetime)

    assert %DateTime{
             year: year,
             month: month,
             day: day,
             hour: hour,
             minute: minute,
             second: second,
             microsecond: microsecond
           } = between_date

    assert from_naivedatetime.year <= year || from_naivedatetime.month <= month ||
             from_naivedatetime.hour <= hour || from_naivedatetime.minute <= minute ||
             from_naivedatetime.day <= day || from_naivedatetime.second <= second ||
             from_naivedatetime.microsecond <= microsecond

    assert to_naivedatetime.year >= year || to_naivedatetime.month >= month ||
             to_naivedatetime.hour >= hour || to_naivedatetime.minute >= minute ||
             to_naivedatetime.day >= day || to_naivedatetime.second >= second ||
             to_naivedatetime.microsecond >= microsecond
  end

  test "between/2 for DateTime.t" do
    from_date = DateTime.utc_now()
    to_date = Faker.DateTime.forward(50)
    between_date = Faker.DateTime.between(from_date, to_date)

    assert %DateTime{
             year: year,
             month: month,
             day: day,
             hour: hour,
             minute: minute,
             second: second,
             microsecond: microsecond
           } = between_date

    assert from_date.year <= year || from_date.month <= month || from_date.hour <= hour ||
             from_date.minute <= minute || from_date.day <= day || from_date.second <= second ||
             from_date.microsecond <= microsecond

    assert to_date.year >= year || to_date.month >= month || to_date.hour >= hour ||
             to_date.minute >= minute || to_date.day >= day || to_date.second >= second ||
             to_date.microsecond >= microsecond
  end
end
