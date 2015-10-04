defmodule Faker.Internet.En do
  @moduledoc"""
  Generating internet related data in English
  """

  @data ["gmail.com", "yahoo.com", "hotmail.com"]
  @data_count Enum.count(@data)
  @doc """
  Returns a random free email service name
  """
  @spec free_email_service() :: String
  def free_email_service do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["com", "biz", "info", "name", "net", "org"]
  @data_count Enum.count(@data)
  @doc """
  Returns a random domain suffix
  """
  @spec domain_suffix() :: String.t
  def domain_suffix do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end
end
