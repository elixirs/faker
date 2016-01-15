defmodule PhoneTest do
  use ExUnit.Case, async: true

  test "phone_number/0" do
    assert is_binary(Faker.Phone.EnGb.phone_number)
    assert String.length(Faker.Phone.EnGb.phone_number) == 12
  end

end
