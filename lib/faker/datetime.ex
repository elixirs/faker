if Version.match?(System.version(), ">= 1.3.0") do
  defmodule Faker.DateTime do
    @microseconds_per_day 86400000000

    @doc """
    Returns a random date in the past up to N days, today not included
    """
    @spec backward(integer) :: DateTime.t
    def backward(days) do
      forward(-days)
    end

    @doc """
    Returns a random date in the future up to N days, today not included
    """
    @spec forward(integer) :: DateTime.t
    def forward(days) do
      unix_from = DateTime.utc_now() |> DateTime.to_unix(:microseconds)

      unix_between(unix_from, days)
    end

    @doc """
    Returns a random date between two dates, start date and end date not
    included
    """
    @spec between(DateTime.t, DateTime.t) :: DateTime.t
    def between(from, to) do
      unix_from = DateTime.to_unix(from, :microseconds)
      unix_to = DateTime.to_unix(to, :microseconds)
      days = round(Float.floor((unix_to - unix_from) / @microseconds_per_day))

      unix_between(unix_from, days)
    end

    # private

    defp unix_between(unix_from, days) do
      sign = if days < 0, do: -1, else: 1

      unix_from + sign * @microseconds_per_day * :crypto.rand_uniform(1, abs(days))
      |> DateTime.from_unix!(:microseconds)
    end
  end
end
