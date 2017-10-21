defmodule Faker.Date do
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
    {{current_year, current_month, current_day}, _time} = :calendar.local_time()
    random_month = Faker.random_between(1, 12)
    random_day = Faker.random_between(1, 28)

    already_aged_this_year =
      current_month > random_month || (current_month == random_month && random_day >= current_day)

    random_year =
      current_year - Faker.random_between(first, last) + if already_aged_this_year, do: 1, else: 0

    {:ok, date} = Date.new(random_year, random_month, random_day)
    date
  end

  @doc """
  Returns a random date in the past up to N days, today not included
  """
  @spec backward(integer) :: Date.t
  def backward(days) do
    forward(-days)
  end

  @doc """
  Returns a random date in the future up to N days, today not included
  """
  @spec forward(integer) :: Date.t
  def forward(days) do
    days
    |> Faker.DateTime.forward()
    |> DateTime.to_date
  end

  @doc """
  Returns a random date between two dates
  """
  @spec between(Date.t, Date.t) :: Date.t
  def between(from, to) do
    from
    |> Faker.DateTime.between(to)
    |> DateTime.to_date
  end
end
