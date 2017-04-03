if Version.match?(System.version(), ">= 1.3.0") do
  defmodule DateTimeTest do
    use ExUnit.Case, async: true

    @microseconds_per_day 86400000000

    test "forward/1" do
      now = now()
      forwarded_date = Faker.DateTime.forward(10)
      assert %DateTime{year: year, month: month, day: day, second: second, microsecond: microsecond}
        = forwarded_date
      assert now.year > year || now.month > month || now.day > day
        || now.second > second || now.microsecond > microsecond
    end

    test "backward/1" do
      now = now()
      backward_date = Faker.DateTime.backward(10)
      assert %DateTime{year: year, month: month, day: day, second: second, microsecond: microsecond}
        = backward_date
      assert now.year > year || now.month > month || now.day > day
        || now.second > second || now.microsecond > microsecond
    end

    test "between/2" do
      from_date = now()
      to_date = add_days(from_date, 10)
      between_date = Faker.DateTime.between(from_date, to_date)
      assert %DateTime{year: year, month: month, day: day, second: second, microsecond: microsecond}
        = between_date
      assert from_date.year < year || from_date.month < month || from_date.day < day
        || from_date.second < second || from_date.microsecond < microsecond
      assert to_date.year > year || to_date.month > month || to_date.day > day
        || to_date.second > second || to_date.microsecond > microsecond
    end

    defp now do
      DateTime.utc_now()
    end

    defp add_days(date, days) do
      DateTime.to_unix(date) + @microseconds_per_day * days
      |> DateTime.from_unix!(:microseconds)
    end
  end
end
