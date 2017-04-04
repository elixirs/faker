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
    Returns a random date & time between two dates
    """
    @spec between(Date.t, Date.t) :: DateTime.t
    def between(%Date{} = from, %Date{} = to) do
      between(date_to_datetime(from), date_to_datetime(to))
    end

    @doc """
    Returns a random `DateTime.t` between two `NaiveDateTime.t`'s
    """
    @spec between(NaiveDateTime.t, NaiveDateTime.t) :: DateTime.t
    def between(%NaiveDateTime{} = from, %NaiveDateTime{} = to) do
      between(naivedatetime_to_datetime(from), naivedatetime_to_datetime(to))
    end

    @doc """
    Returns a random `DateTime.t` between two `DateTime.t`'s
    """
    @spec between(DateTime.t, DateTime.t) :: DateTime.t
    def between(from, to) do
      unix_between(to_timestamp(from), to_timestamp(to))
    end

    # private

    defp date_to_datetime(date) do
      %DateTime{calendar: Calendar.ISO, day: date.day, hour: 0, minute: 0,
                month: date.month, second: 0, time_zone: "Etc/UTC",
                utc_offset: 0, std_offset: 0, year: date.year, zone_abbr: "UTC"}
    end

    defp naivedatetime_to_datetime(naivedatetime) do
      %DateTime{calendar: naivedatetime.calendar, day: naivedatetime.day,
                hour: naivedatetime.hour, minute: naivedatetime.minute,
                month: naivedatetime.month, second: naivedatetime.second,
                time_zone: "Etc/UTC", utc_offset: 0, std_offset: 0,
                year: naivedatetime.year, zone_abbr: "UTC"}
    end

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
