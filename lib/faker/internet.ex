defmodule Faker.Internet do
  alias Faker.Name.En, as: Name
  alias Faker.{Lorem, Util}

  @moduledoc """
  Functions for generating internet related data
  """

  @doc """
  Returns a complete random domain name
  """
  @spec domain_name() :: String.t
  def domain_name do
    "#{domain_word()}.#{domain_suffix()}"
  end

  @doc """
  Returns a random domain suffix
  """
  @spec domain_suffix() :: String.t
  def domain_suffix do
    Module.concat(__MODULE__, Faker.mlocale).domain_suffix
  end

  @doc """
  Returns a random username
  """
  @spec user_name() :: String.t
  def user_name, do: user_name(Faker.random_between(0, 1))

  defp user_name(0) do
    "#{Name.first_name() |> String.replace(~s(  ), ~s()) |> String.downcase()}#{Faker.random_between(1900, 2100)}"
  end

  defp user_name(1) do
    [Name.first_name(), Name.last_name()]
    |> Enum.map_join(Util.pick(~w(. _)), &String.replace(&1, ~s(  ), ~s()))
    |> String.downcase()
  end

  @doc """
  Returns a random domain word
  """
  @spec domain_word() :: String.t
  def domain_word do
    "#{Name.last_name |> String.split(["'"]) |> Enum.join |> String.downcase}"
  end

  @doc """
  Returns a complete email based on a domain name
  """
  @spec email() :: String.t
  def email do
    "#{user_name()}@#{domain_name()}"
  end

  @doc """
  Returns a complete free email based on a free email service [gmail, yahoo, hotmail]
  """
  @spec free_email() :: String.t
  def free_email do
    "#{user_name()}@#{free_email_service()}"
  end

  @doc """
  Returns a safe email
  """
  @spec safe_email() :: String.t
  def safe_email do
    "#{user_name()}@example.#{Util.pick(~w(org com net))}"
  end

  @doc """
  Returns a free email service
  """
  @spec free_email_service() :: String.t
  def free_email_service do
    Module.concat(__MODULE__, Faker.mlocale).free_email_service
  end

  @doc """
  Returns a random url
  """
  @spec url() :: String.t
  def url, do: url(Faker.random_between(0, 1))

  defp url(0), do: "http://#{domain_name()}"
  defp url(1), do: "https://#{domain_name()}"

  @doc """
  Returns a random image url from placekitten.com | placehold.it | dummyimage.com
  """
  @spec image_url() :: String.t
  def image_url, do: image_url(Faker.random_between(0, 2))

  defp image_url(0) do
    size = Faker.random_between(10, 1024)
    "https://placekitten.com/#{size}/#{size}"
  end

  defp image_url(1) do
    size = Faker.random_between(10, 1024)
    "https://placehold.it/#{size}x#{size}"
  end

  defp image_url(2) do
    size = Faker.random_between(10, 1024)
    "https://dummyimage.com/#{size}x#{size}"
  end

  @doc """
  Generates an ipv4 address
  """
  @spec ip_v4_address() :: String.t
  def ip_v4_address do
    Enum.map_join 1..4, ".", fn(_part) ->
      Faker.random_between(0, 255)
    end
  end

  @doc """
  Generates an ipv6 address
  """
  @spec ip_v6_address() :: String.t
  def ip_v6_address do
    Enum.map_join(1..8, ":", fn _part ->
      Faker.random_between(0, 65535)
      |> Integer.to_string(16)
      |> String.pad_leading(4, ["0"])
    end)
  end

  @doc """
  Generates a mac address
  """
  @spec mac_address() :: String.t
  def mac_address do
    1..6
    |> Enum.map_join(":", &format_mac_address/1)
    |> String.downcase()
  end

  @doc """
  Generates a slug
  If no words are provided it will generate 2 to 5 random words
  If no glue is provied it will use one of -, _ or .
  """
  @spec slug() :: String.t
  def slug do
    slug(Lorem.words(2..5))
  end

  @spec slug([String.t]) :: String.t
  def slug(words) do
    slug(words, ["-", "_", "."])
  end

  @spec slug([String.t], [String.t]) :: String.t
  def slug(words, glue) do
    words
    |> Enum.take_random(length(words))
    |> Enum.join(Enum.random(glue))
    |> String.downcase
  end

  defp format_mac_address(_part) do
    Faker.random_between(0, 255)
    |> Integer.to_string(16)
    |> String.pad_leading(2, ["0"])
  end
end
