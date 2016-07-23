defmodule NatoTest do
  use ExUnit.Case, async: true

  test "letter_code_word/0" do
    assert is_binary(Faker.Nato.letter_code_word)
  end

  test "digit_code_word/0" do
    assert is_binary(Faker.Nato.digit_code_word)
  end

  test "stop_code_word/0" do
    assert is_binary(Faker.Nato.stop_code_word)
  end

  test "callsign/0" do
    assert is_binary(Faker.Nato.callsign)
  end

  test "format/1" do
    assert is_binary(Faker.Nato.format(""))
    assert Faker.Nato.format("? Team") =~ ~r/\w{4} Team/
    assert Faker.Nato.format("hey") == "hey"
    assert Faker.Nato.format(". it") == "STOP it"
  end
end
