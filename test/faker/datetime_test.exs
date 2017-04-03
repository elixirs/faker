if Version.match?(System.version(), ">= 1.3.0") do
  defmodule DateTimeTest do
    use ExUnit.Case, async: true

    @microseconds_per_day 86400000000

    test "forward/1" do
      now = DateTime.utc_now()
      forwarded_date = Faker.DateTime.forward(10)
      assert %DateTime{
        year: year, month: month, day: day, hour: hour, minute: minute,
        second: second, microsecond: microsecond
      } = forwarded_date
      assert now.year < year || now.month < month
        || now.hour < hour || now.minute < minute
        || now.day < day || now.second < second
        || now.microsecond < microsecond
    end

    test "backward/1" do
      now = DateTime.utc_now()
      backward_date = Faker.DateTime.backward(10)
      assert %DateTime{
        year: year, month: month, day: day, hour: hour, minute: minute,
        second: second, microsecond: microsecond
      } = backward_date
      assert now.year > year || now.month > month
        || now.hour > hour || now.minute > minute
        || now.day > day || now.second > second
        || now.microsecond > microsecond
    end

    test "between/2 for Date.t" do
      from_date = DateTime.utc_now() |> DateTime.to_date
      to_date = Faker.DateTime.forward(50) |> DateTime.to_date
      between_date = Faker.DateTime.between(from_date, to_date)
      assert %DateTime{year: year, month: month, day: day}
        = between_date
      assert from_date.year <= year || from_date.month <= month
        || from_date.day <= day
      assert to_date.year >= year || to_date.month >= month
        || to_date.day >= day
    end

    test "between/2 for DateTime.t" do
      from_date = DateTime.utc_now()
      to_date = Faker.DateTime.forward(50)
      between_date = Faker.DateTime.between(from_date, to_date)
      assert %DateTime{
        year: year, month: month, day: day, hour: hour, minute: minute,
        second: second, microsecond: microsecond
      } = between_date
      assert from_date.year <= year || from_date.month <= month
        || from_date.hour <= hour || from_date.minute <= minute
        || from_date.day <= day || from_date.second <= second
        || from_date.microsecond <= microsecond
      assert to_date.year >= year || to_date.month >= month
        || to_date.hour >= hour || to_date.minute >= minute
        || to_date.day >= day || to_date.second >= second
        || to_date.microsecond >= microsecond
    end
  end
end
