defmodule Faker.Random.Test do
  @moduledoc false

  use Faker.Random

  def random_between(left, right) do
    set_seed(:ets.lookup(:seed_registry, self()))
    Enum.random(left..right)
  end

  def random_bytes(total) do
    set_seed(:ets.lookup(:seed_registry, self()))

    Stream.repeatedly(fn -> random_between(0, 255) end)
    |> Enum.take(total)
    |> IO.iodata_to_binary()
  end

  def random_uniform do
    set_seed(:ets.lookup(:seed_registry, self()))
    :rand.uniform()
  end

  @spec shuffle(Enum.t()) :: list
  def shuffle(enumerable) do
    randomized =
      Enum.reduce(enumerable, [], fn x, acc ->
        [{:rand.uniform(), x} | acc]
      end)

    shuffle_unwrap(:lists.keysort(1, randomized))
  end

  defp shuffle_unwrap([{_, h} | rest]), do: [h | shuffle_unwrap(rest)]
  defp shuffle_unwrap([]), do: []

  @spec random(Enum.t()) :: Enum.element()
  def random(enumerable)

  def random(enumerable) when is_list(enumerable) do
    case length(enumerable) do
      0 -> raise Enum.EmptyError
      length -> enumerable |> drop_list(random_count(length)) |> hd()
    end
  end

  def random(first.._//step = range) do
    case Range.size(range) do
      0 -> raise Enum.EmptyError
      size -> first + random_count(size) * step
    end
  end

  def random(enumerable) do
    result =
      case Enumerable.slice(enumerable) do
        {:ok, 0, _} ->
          []

        {:ok, count, fun} when is_function(fun, 1) ->
          slice_list(fun.(enumerable), random_count(count), 1, 1)

        # TODO: Deprecate me in Elixir v1.18.
        {:ok, count, fun} when is_function(fun, 2) ->
          fun.(random_count(count), 1)

        {:ok, count, fun} when is_function(fun, 3) ->
          fun.(random_count(count), 1, 1)

        {:error, _} ->
          Enum.take_random(enumerable, 1)
      end

    case result do
      [] -> raise Enum.EmptyError
      [elem] -> elem
    end
  end

  defp random_count(count) do
    :rand.uniform(count) - 1
  end

  defp drop_list(list, 0), do: list
  defp drop_list([_ | tail], counter), do: drop_list(tail, counter - 1)
  defp drop_list([], _), do: []

  defp slice_list(list, start, amount, step) do
    if step == 1 do
      list |> drop_list(start) |> take_list(amount)
    else
      list |> drop_list(start) |> take_every_list(amount, step - 1)
    end
  end

  defp take_list(_list, 0), do: []
  defp take_list([head | tail], counter), do: [head | take_list(tail, counter - 1)]
  defp take_list([], _counter), do: []

  defp take_every_list([head | tail], counter, to_drop),
    do: [head | tail |> drop_list(to_drop) |> take_every_list(counter - 1, to_drop)]

  defp take_every_list([], _counter, _to_drop), do: []

  defp set_seed([]) do
    :rand.seed(:exsplus, {1, 1, 1})
    :ets.insert(:seed_registry, {self(), true})
  end

  defp set_seed(_) do
  end
end
