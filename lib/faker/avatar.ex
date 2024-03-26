defmodule Faker.Avatar do
  alias Faker.Lorem

  @moduledoc """
  Functions for generate random urls for avatars.
  """

  @doc """
  Return avatar url with random set and background.

  ## Examples

      iex> Faker.Avatar.image_url()
      "https://robohash.org/set_set1/bgset_bg2/kQqaIfGqxsjFoNIT"
      iex> Faker.Avatar.image_url()
      "https://robohash.org/set_set1/bgset_bg2/6"
      iex> Faker.Avatar.image_url()
      "https://robohash.org/set_set1/bgset_bg2/J"
      iex> Faker.Avatar.image_url()
      "https://robohash.org/set_set3/bgset_bg1/JNth88PrhGDhwp4LNQMt"
  """
  @spec image_url() :: String.t()
  def image_url do
    "https://robohash.org#{set()}#{bg()}/#{Lorem.characters(1..20)}"
  end

  @doc """
  Return avatar url for given `slug`, `set`, and `bg`, with size `width` x `height` pixels.
  Valid parameters are:

  - `slug: string()` - slug to generate avatar image for
  - `set: integer() | :random` - set number from 1 to 5
  - `bg: integer() | :random` - background number from 1 to 2
  - `width: integer()` - image width
  - `height: integer()` - image height (defaults to `width`)

  ## Examples

      iex> Faker.Avatar.image_url('faker')
      "https://robohash.org/faker"
      iex> Faker.Avatar.image_url('elixir')
      "https://robohash.org/elixir"
      iex> Faker.Avatar.image_url('plug')
      "https://robohash.org/plug"
      iex> Faker.Avatar.image_url('ecto')
      "https://robohash.org/ecto"
      iex> Faker.Avatar.image_url(%{slug: 'phoenix', width: 100, set: 5})
      "https://robohash.org/set_set5/phoenix?size=100x100"
  """
  @spec image_url(binary | charlist | %{
          set: integer | :random,
          bg: integer | :random,
          width: integer,
          height: integer,
          slug: String.t()
        }) :: String.t()
  def image_url(%{} = params) do
    set = Map.get(params, :set)
    set = set && "/set_set#{set}"
    set = set == :random && set() || set
    bg = Map.get(params, :bg)
    bg = bg && "/bgset_bg#{bg}"
    bg = bg == :random && bg() || bg
    width = Map.get(params, :width)
    height = Map.get(params, :height) || width
    size = width && "?size=#{width}x#{height}"
    slug = Map.get(params, :slug) || Lorem.characters(1..20)

    "https://robohash.org#{set}#{bg}/#{slug}#{size}"
  end
  def image_url(slug) when is_binary(slug) or is_list(slug) do
    "https://robohash.org/#{slug}"
  end

  @doc """
  Return avatar url with random set and background, with size `width` x `height`
  pixels.

  ## Examples

      iex> Faker.Avatar.image_url(200, 200)
      "https://robohash.org/set_set3/bgset_bg2/ppkQqaIfGqx?size=200x200"
      iex> Faker.Avatar.image_url(800, 600)
      "https://robohash.org/set_set1/bgset_bg2/oNITNnu6?size=800x600"
      iex> Faker.Avatar.image_url(32, 32)
      "https://robohash.org/set_set3/bgset_bg1/J?size=32x32"
      iex> Faker.Avatar.image_url(128, 128)
      "https://robohash.org/set_set2/bgset_bg2/JNth88PrhGDhwp4LNQMt?size=128x128"
  """
  @spec image_url(integer, integer) :: String.t()
  def image_url(width, height)
      when is_integer(width) and is_integer(height) do
    slug = Lorem.characters(1..20)
    "https://robohash.org#{set()}#{bg()}/#{slug}?size=#{width}x#{height}"
  end

  @doc """
  Return avatar url for given `slug`, with size `width` x `height` pixels.

  ## Examples

      iex> Faker.Avatar.image_url('phoenix', 100, 100)
      "https://robohash.org/phoenix?size=100x100"
      iex> Faker.Avatar.image_url('haskell', 200, 200)
      "https://robohash.org/haskell?size=200x200"
      iex> Faker.Avatar.image_url('ocaml', 300, 300)
      "https://robohash.org/ocaml?size=300x300"
      iex> Faker.Avatar.image_url('idris', 400, 400)
      "https://robohash.org/idris?size=400x400"
  """
  @spec image_url(binary, integer, integer) :: String.t()
  def image_url(slug, width, height)
      when is_integer(width) and is_integer(height) do
    "https://robohash.org/#{slug}?size=#{width}x#{height}"
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
      2 => "/set_set3",
      3 => "/set_set4",
      4 => "/set_set5"
    }[Faker.random_between(0, 4)]
  end
end
