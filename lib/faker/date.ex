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
  @spec date_of_birth() :: Date.t()
  def date_of_birth(age_or_range \\ 18..99)

  @spec date_of_birth(integer) :: Date.t()
  def date_of_birth(age) when is_integer(age) do
    {{year_now, month_now, day_now}, _time} = :calendar.local_time()

    earliest_year = year_now - (age + 1)

    potential_earliest_date = {earliest_year, month_now, day_now + 1}
    potential_latest_date = {earliest_year + 1, month_now, day_now}

    earliest_date =
      case :calendar.valid_date(potential_earliest_date) do
        true -> {earliest_year, month_now, day_now + 1}
        false -> {earliest_year, 3, 1}
      end

    latest_date =
      case :calendar.valid_date(potential_latest_date) do
        true -> {earliest_year + 1, month_now, day_now}
        false -> {earliest_year + 1, 2, 28}
      end

    earliest_as_seconds = :calendar.datetime_to_gregorian_seconds({earliest_date, {0, 0, 0}})
    lastest_as_seconds = :calendar.datetime_to_gregorian_seconds({latest_date, {23, 59, 59}})

    {chosen_date, _time} =
      (lastest_as_seconds - earliest_as_seconds)
      |> :rand.uniform()
      |> Kernel.+(earliest_as_seconds)
      |> :calendar.gregorian_seconds_to_datetime()

    {:ok, result} = Date.from_erl(chosen_date)
    result
  end

  @spec date_of_birth(Range.t()) :: Date.t()
  def date_of_birth(%Range{first: first, last: last}) do
    random_age =
      cond do
        first < last ->
          first + :rand.uniform(last - first + 1) - 1

        first > last ->
          last + :rand.uniform(first - last + 1) - 1

        true ->
          first
      end

    date_of_birth(random_age)
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
