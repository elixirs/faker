defmodule Faker.Date do
  import Faker.Util, only: [pick: 1]

  @moduledoc """
  Functions for generating dates
  """

  @doc """
  Returns a random date of birth for a person with an age specified by a number or range
  """
  @spec date_of_birth(integer | Range.t()) :: Date.t()
  def date_of_birth(age_or_range \\ 18..99)

  def date_of_birth(age) when is_integer(age) do
    {{year_now, month_now, day_now}, _time} = :calendar.local_time()

    earliest_year = year_now - (age + 1)

    potential_earliest_date = {earliest_year, month_now, day_now + 1}
    potential_latest_date = {earliest_year + 1, month_now, day_now}

    earliest_date =
      if :calendar.valid_date(potential_earliest_date),
        do: {earliest_year, month_now, day_now + 1},
        else: {earliest_year, 3, 1}

    latest_date =
      if :calendar.valid_date(potential_latest_date),
        do: {earliest_year + 1, month_now, day_now},
        else: {earliest_year + 1, 2, 28}

    earliest_as_seconds = :calendar.datetime_to_gregorian_seconds({earliest_date, {0, 0, 0}})
    lastest_as_seconds = :calendar.datetime_to_gregorian_seconds({latest_date, {23, 59, 59}})

    {chosen_date, _time} =
      earliest_as_seconds..lastest_as_seconds
      |> pick()
      |> :calendar.gregorian_seconds_to_datetime()

    {:ok, result} = Date.from_erl(chosen_date)
    result
  end

  def date_of_birth(age_range) do
    age_range
    |> pick()
    |> date_of_birth()
  end

  @doc """
  Returns a random date in the past up to N days, today not included
  """
  @spec backward(integer) :: Date.t()
  def backward(days) do
    forward(-days)
  end

  @doc """
  Returns a random date in the future up to N days, today not included
  """
  @spec forward(integer) :: Date.t()
  def forward(days) do
    days
    |> Faker.DateTime.forward()
    |> DateTime.to_date()
  end

  @doc """
  Returns a random date between two dates

  ## Examples

      iex> Faker.Date.between(~D[2010-12-10], ~D[2016-12-25])
      ~D[2013-06-07]
      iex> Faker.Date.between(~D[2000-12-20], ~D[2000-12-25])
      ~D[2000-12-20]
      iex> Faker.Date.between(~D[2000-02-02], ~D[2016-02-05])
      ~D[2014-10-23]
      iex> Faker.Date.between(~D[2010-12-20], ~D[2010-12-25])
      ~D[2010-12-21]
  """
  @spec between(Date.t(), Date.t()) :: Date.t()
  def between(from, to) do
    from
    |> Faker.DateTime.between(to)
    |> DateTime.to_date()
  end
end
