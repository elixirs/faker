defmodule Faker.Blockchain.Ethereum do
  @moduledoc """
  Functions for genrerate ethereum addresses.
  """

  @type address :: <<_::160>>

  @doc """
  Return ethereum address

  ## Examples

      iex> Faker.Blockchain.Ethereum.address()
      "0xd6d98b88c866f496dbd4de7ba48d0f5229fa7bf9"
      iex> Faker.Blockchain.Ethereum.address()
      "0x0728b27267bc5b7c964f332dc9edd02cc9f381de"
      iex> Faker.Blockchain.Ethereum.address()
      "0xf9d922a146bf85508a5f03ff18750bf363f4aef1"
      iex> Faker.Blockchain.Ethereum.address()
      "0x264e3bcc9b5c2accb99a3a4993ad56b778dc26ed"
  """
  @spec address() :: address
  def address do
    "0x" <>
      (20
       |> Faker.random_bytes()
       |> Base.encode16(case: :lower))
  end
end
