defmodule Faker.Blockchain.Ethereum do
  @moduledoc """
  Functions for genrerate ethereum addresses.
  """

  @type address :: <<_::160>>

  @doc """
  Return ethereum address

  ## Examples

    iex> Faker.Blockchain.Ethereum.address()
    
  """
  @spec address() :: address
  def address do
    20
    |> Faker.random_bytes()
    |> Base.encode16(case: :lower)
  end
end
