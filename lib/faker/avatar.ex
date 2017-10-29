defmodule Faker.Avatar do
  alias Faker.Lorem

  @moduledoc """
  Functions for generate random urls for avatars.
  """

  @doc """
  Return avatar url with random set and background.
  """
  @spec image_url() :: String.t
  def image_url do
    "http://robohash.org#{set()}#{bg()}/#{Lorem.characters(1..20)}"
  end

  @doc """
  Return avatar url for given `slug`.
  """
  @spec image_url(binary) :: String.t
  def image_url(slug) do
    "http://robohash.org/#{slug}"
  end

  @doc """
  Return avatar url with random set and background, with size `width` x `height`
  pixels.
  """
  @spec image_url(integer, integer) :: String.t
  def image_url(width, height)
  when is_integer(width) and is_integer(height) do
    slug = Lorem.characters(1..20)
    "http://robohash.org#{set()}#{bg()}/#{slug}?size=#{width}x#{height}"
  end

  @doc """
  Return avatar url for given `slug`, with size `width` x `height` pixels.
  """
  @spec image_url(binary, integer, integer) :: String.t
  def image_url(slug, width, height)
  when is_integer(width) and is_integer(height) do
    "http://robohash.org/#{slug}?size=#{width}x#{height}"
  end

  defp bg do
    %{
      0 => "/bgset_bg1",
      1 => "/bgset_bg2"
    }[Faker.random_between(0, 1)]
  end

  defp set do
    %{
      0 => "/set_set1",
      1 => "/set_set2",
      2 => "/set_set3"
    }[Faker.random_between(0, 2)]
  end
end
