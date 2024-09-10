defmodule Faker.Blockchain.Ethereum do
  @moduledoc """
  Functions for generate ethereum addresses.
  """

  @type address :: <<_::336>>
  @type signature :: <<_::1056>>

  @doc """
  Return ethereum address

  ## Examples

      iex> Faker.Blockchain.Ethereum.address()
      "0x3c0f50d05f218483dc1c6bb76224822be07dd502"
  """
  @spec address() :: address
  def address do
    "0x" <>
      (20
       |> Faker.random_bytes()
       |> Base.encode16(case: :lower))
  end

  @doc """
  Return ethereum signature

  ## Examples

      iex> Faker.Blockchain.Ethereum.signature()
      "0x3c0f50d05f218483dc1c6bb76224822be07dd502fdb6e6e98835badf7b5bfc3b96b2fd9c2117e85e9ae7dd7c2d08da0c25c868fc64fc1145278fd7f99b958599ef"
  """
  @spec signature() :: signature
  def signature do
    "0x" <>
      (65
       |> Faker.random_bytes()
       |> Base.encode16(case: :lower))
  end
end
