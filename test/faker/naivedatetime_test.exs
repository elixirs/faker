defmodule Faker.NaiveDateTimeTest do
  use ExUnit.Case, async: true

  test "forward/1" do
    now_datetime = DateTime.utc_now()
    now_date = now_datetime |> DateTime.to_date()
    now_time = now_datetime |> DateTime.to_time()
    {:ok, now} = NaiveDateTime.new(now_date, now_time)

    forwarded_date = Faker.NaiveDateTime.forward(10)

    assert %NaiveDateTime{
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
    now_datetime = DateTime.utc_now()
    now_date = now_datetime |> DateTime.to_date()
    now_time = now_datetime |> DateTime.to_time()
    {:ok, now} = NaiveDateTime.new(now_date, now_time)

    backward_date = Faker.NaiveDateTime.backward(10)

    assert %NaiveDateTime{
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

  test "between/2" do
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
end
