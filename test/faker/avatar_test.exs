defmodule Faker.AvatarTest do
  use ExUnit.Case, async: true

  import Faker.Avatar

  doctest Faker.Avatar

  @iterations 10_000

  test "image_url/0" do
    assert String.starts_with?(image_url(), "http://robohash.org/")
  end

  test "image_url/1" do
    assert String.starts_with?(image_url("myslug"), "http://robohash.org/")
    assert String.contains?(image_url("myslug"), "myslug")
  end

  test "image_url/2" do
    assert String.contains?(image_url(40, 60), "40x60")
  end

  test "image_url/3" do
    assert String.contains?(image_url("myslug", 70, 20), "70x20")
    assert String.contains?(image_url("myslug", 70, 20), "myslug")
  end
end
