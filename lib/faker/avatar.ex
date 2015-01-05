defmodule Faker.Avatar do
  def image_url do
    "http://robohash.org#{set}#{bg}/#{Faker.Lorem.characters(1..20)}"
  end

  def image_url(slug) do
    "http://robohash.org/#{slug}"
  end

  def image_url(width, height)
  when is_integer(width) and is_integer(height) do
    slug = Faker.Lorem.characters(1..20)
    "http://robohash.org#{set}#{bg}/#{slug}?size=#{width}x#{height}"
  end

  def image_url(slug, width, height)
  when is_integer(width) and is_integer(height) do
    "http://robohash.org/#{slug}?size=#{width}x#{height}"
  end

  defp bg do
    :random.seed(:erlang.now)
    ~w(/bgset_bg1 /bgset_bg2) |> Enum.shuffle |> List.first
  end

  defp set do
    :random.seed(:erlang.now)
    ~w(/set_set1 /set_set2 /set_set3) |> Enum.shuffle |> List.first
  end
end
