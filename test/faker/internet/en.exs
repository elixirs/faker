defmodule Internet.EnTest do
  use ExUnit.Case, async: true

  test "domain_suffix/0" do
    assert is_binary(Faker.Internet.domain_suffix)
  end

  test "free_email_service/0" do
    assert is_binary(Faker.Internet.free_email_service)
  end
end
