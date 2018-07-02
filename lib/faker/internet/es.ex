defmodule Faker.Internet.Es do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Generating internet related data in Spanish
  """

  @doc """
  Returns a random free email service name
  """
  @spec free_email_service() :: String
  sampler(:free_email_service, ["gmail.com", "yahoo.com", "hotmail.com"])

  @doc """
  Returns a random domain suffix
  """
  @spec domain_suffix() :: String.t()
  sampler(:domain_suffix, ["com", "es", "info", "com.es", "org"])
end
