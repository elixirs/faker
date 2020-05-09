defmodule Faker.Internet.AWS do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating AWS config values
  """

  @doc """
  Returns AWS Region

  ## Examples

      iex> Faker.Internet.AWS.aws_region()
      "ap-south-1"
      iex> Faker.Internet.AWS.aws_region()
      "ap-southeast-1"
      iex> Faker.Internet.AWS.aws_region()
      "ap-northeast-3"
      iex> Faker.Internet.AWS.aws_region()
      "ca-central-1"
  """
  @spec aws_region() :: String.t()
  sampler(:aws_region, [
    "us-east-2",
    "us-east-1",
    "us-west-1",
    "us-west-2",
    "af-south-1",
    "ap-east-1",
    "ap-south-1",
    "ap-northeast-3",
    "ap-northeast-2",
    "ap-southeast-1",
    "ap-southeast-2",
    "ap-northeast-1",
    "ca-central-1",
    "eu-central-1"
  ])
end
