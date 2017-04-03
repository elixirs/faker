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
      sign = if days < 0, do: -1, else: 1

      today = DateTime.utc_now() |> to_timestamp
      from = today + sign * @microseconds_per_day # add or subtract extra day to avoid returning today
      to = from + @microseconds_per_day * days

      unix_between(from, to)
    end

    @doc """
    Returns a random date between two dates, today included
    """
    @spec between(DateTime.t, DateTime.t) :: DateTime.t
    def between(from, to) do
      unix_from = to_timestamp(from)
      unix_to = to_timestamp(to)

      unix_between(unix_from, unix_to)
    end

    # private

    defp to_timestamp(datetime) do
      DateTime.to_unix(datetime, :microseconds)
    end

    defp unix_between(from, to) do
      diff = to - from
      sign = if diff < 0, do: -1, else: 1

      from + sign * :crypto.rand_uniform(0, abs(diff))
      |> DateTime.from_unix!(:microseconds)
    end
  end
end
