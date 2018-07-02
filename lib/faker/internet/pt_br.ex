defmodule Faker.Internet.PtBr do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Generating internet related data in Brazilian Portuguese
  """

  @doc """
  Returns a random free email service name
  """
  @spec free_email_service() :: String
  sampler(:free_email_service, ["gmail.com", "yahoo.com", "hotmail.com", "live.com", "bol.com.br"])

  @doc """
  Returns a random domain suffix
  """
  @spec domain_suffix() :: String.t()
  sampler(:domain_suffix, ["br", "biz", "info", "name", "net", "org"])
end
