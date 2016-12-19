if Version.match?(System.version(), ">= 1.3.0") do
  defmodule DateTest do
    use ExUnit.Case, async: true

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
      assert %Date{} = forwarded_date
      assert forwarded_date >= now
    end

    test "backward/1" do
      backward_date = Faker.Date.backward(10)
      assert %Date{} = backward_date
      assert backward_date <= now
    end

    defp age(%Date{year: year, month: month, day: day}) do
      %Date{ year: current_year, month: current_month, day: current_day } = now
      already_aged_this_year = current_month > month || current_month == month && day >= current_day
      current_year - year + (if already_aged_this_year, do: 1, else: 0)
    end

    defp now do
      DateTime.utc_now |> DateTime.to_date
    end
  end
end
