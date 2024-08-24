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
      iex> Faker.Blockchain.Ethereum.address()
      "0xfdb6e6e98835badf7b5bfc3b96b2fd9c2117e85e"
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
      iex> Faker.Blockchain.Ethereum.signature()
      "0x8f34566dd6e03eef416dba994e4d581b1986a56d8e9a97c45d3b325baec0ed967a43173e2f43009d75d607f261cefc4a888a3c284a3ae553a46a4f7b8f9e8b491a"
  """
  @spec signature() :: signature
  def signature do
    "0x" <>
      (65
       |> Faker.random_bytes()
       |> Base.encode16(case: :lower))
  end
end
