defmodule Faker.NaiveDateTime do
  @moduledoc false

  @doc """
  Returns a random date in the past up to N days, today not included
  """
  @spec backward(integer) :: NaiveDateTime.t
  def backward(days) do
    forward(-days)
  end

  @doc """
  Returns a random date in the future up to N days, today not included
  """
  @spec forward(integer) :: NaiveDateTime.t
  def forward(days) do
    days
    |> Faker.DateTime.forward()
    |> DateTime.to_naive
  end

  @doc """
  Returns a random `NaiveDateTime.t` between two `NaiveDateTime.t`'s
  """
  @spec between(NaiveDateTime.t, NaiveDateTime.t) :: NaiveDateTime.t
  def between(from, to) do
    from
    |> Faker.DateTime.between(to)
    |> DateTime.to_naive
  end
end
