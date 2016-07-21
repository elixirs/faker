if Version.match?(System.version(), ">= 1.3.0") do
  defmodule DateTest do
    use ExUnit.Case, async: true

    test "date_of_birth/0" do
      assert %Date{} = Faker.Date.date_of_birth
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

    defp now do
      DateTime.utc_now |> DateTime.to_date
    end
  end
end
