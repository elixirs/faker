defmodule Faker.Internet.Arm do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating internet related data in Armenian
  """

  @doc """
  Returns a random free email service name.

  ## Examples

      iex> Faker.Internet.Arm.free_email_service()
      "hotmail.com"
      iex> Faker.Internet.Arm.free_email_service()
      "yandex.ru"
      iex> Faker.Internet.Arm.free_email_service()
      "freenet.am"
      iex> Faker.Internet.En.free_email_service()
      "hotmail.com"
  """
  @spec free_email_service() :: String
  sampler(:free_email_service, [
    "freenet.am",
    "namag.net",
    "yandex.ru",
    "mail.ru",
    "gmail.com",
    "yahoo.com",
    "hotmail.com"
  ])

  @doc """
  Returns a random domain suffix.

  ## Examples

      iex> Faker.Internet.Arm.domain_suffix()
      "am"
      iex> Faker.Internet.Arm.domain_suffix()
      "com"
      iex> Faker.Internet.Arm.domain_suffix()
      "am"
      iex> Faker.Internet.Arm.domain_suffix()
      "org"
  """
  @spec domain_suffix() :: String.t()
  sampler(:domain_suffix, ["am", "com", "info", "net", "org"])
end
