if Version.match?(System.version(), ">= 1.3.0") do
  defmodule Faker.Date do
    @moduledoc """
    Functions for generating dates
    """

    @seconds_per_day 86400

    @doc """
    Returns a random date of birth for a person aged between ~12 to ~99
    """
    @spec date_of_birth() :: Date.t
    def date_of_birth do
      {{ current_year, _month, _date }, _time } = :calendar.local_time()
      { :ok, date } = Date.new current_year - :crypto.rand_uniform(12, 99), :crypto.rand_uniform(1, 12), :crypto.rand_uniform(1, 28)
      date
    end

    @doc """
    Returns a random date in the past up to N days
    """
    @spec backward(integer) :: Date.t
    def backward(days) do
      forward(-days)
    end

    @doc """
    Returns a random date in the future up to N days
    """
    @spec forward(integer) :: Date.t
    def forward(days) do
      unix_now =
        DateTime.utc_now()
        |> DateTime.to_unix()

      sign = if days < 0, do: -1, else: 1

      unix_now + sign * :crypto.rand_uniform(0, @seconds_per_day * abs(days))
      |> DateTime.from_unix!()
      |> DateTime.to_date()
    end
  end
end
