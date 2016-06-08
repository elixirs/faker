defmodule FileTest do
  use ExUnit.Case, async: true

  test "file_extension/0" do
    assert is_binary(Faker.File.file_extension)
  end

  test "file_extension/1" do
    assert is_binary(Faker.File.file_extension(:audio))
  end

  test "mime_type/0" do
    assert is_binary(Faker.File.mime_type)
  end

  test "mime_type/1" do
    assert is_binary(Faker.File.mime_type(:video))
  end

  test "file_name/0" do
    assert is_binary(Faker.File.file_name)
    assert String.contains?(Faker.File.file_name, ".")
  end

  test "file_name/1" do
    assert is_binary(Faker.File.file_name(:office))
    assert String.contains?(Faker.File.file_name(:office), ".")
  end

end
