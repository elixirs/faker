defmodule Faker.Date do
  use Timex

  @moduledoc """
  Functions for generating dates
  """

  @doc """
  Returns a random date of birth for a person with an age specified by a number or range

  ## Examples

      date_of_birth #=> ~D[1961-05-09]
      date_of_birth(1) #=> ~D[2015-12-06]
      date_of_birth(10..19) #=> ~D[2004-05-15]
  """
  @spec date_of_birth() :: Date.t
  def date_of_birth(age_or_range \\ 18..99)

  @spec date_of_birth(integer) :: Date.t
  def date_of_birth(age) when is_integer(age) do
    date_of_birth(%Range{first: age, last: age + 1})
  end

  @spec date_of_birth(Range.t) :: Date.t
  def date_of_birth(%Range{first: first, last: last}) do
    to_date = Timex.shift Timex.today, years: -first
    from_date = Timex.shift Timex.today, years: -last
    between(from_date, to_date)
  end

  @doc """
  Returns a random date in the past up to N days, today not included
  """
  @spec backward(integer) :: Date.t
  def backward(days) do
    from_date = Timex.shift Timex.today, days: -days
    to_date = Timex.shift Timex.today, days: -1
    between(from_date, to_date)
  end

  @doc """
  Returns a random date in the future up to N days, today not included
  """
  @spec forward(integer) :: Date.t
  def forward(days) do
    from_date = Timex.shift Timex.today, days: 1
    to_date = Timex.shift Timex.today, days: days
    between(from_date, to_date)
  end

  @doc """
  Returns a random date between two dates, inclusive
  """
  @spec between(Date.t, Date.t) :: Date.t
  def between(from_date, to_date) do
    days_diff = Timex.diff to_date, from_date, :days
    Timex.shift from_date, days: Enum.random(0..days_diff)
  end
end
