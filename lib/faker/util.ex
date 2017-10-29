defmodule Faker.Util do
  @moduledoc """
  Collection of useful functions for your fake data. Functions aware of locale.
  """

  @doc """
  Pick a random element from the list
  """
  @spec pick([any]) :: any
  def pick(list) do
    Enum.at(list, Faker.random_between(0, Enum.count(list) - 1))
  end

  @doc """
  Execute fun n times with the index as first param and return the results as a list
  """
  @spec list(integer, ((integer) -> any)) :: [any]
  def list(n, fun) when is_function(fun, 1) do
    Enum.map(0..(n - 1), &fun.(&1))
  end

  @spec list(integer, (() -> any)) :: [any]
  def list(n, fun) when is_function(fun, 0) do
    Enum.map(0..(n - 1), fn _ -> fun.() end)
  end

  @doc """
  Execute fun n times with the index as first param and join the results with joiner

  ## Examples

      join(3, ", ", &Faker.Code.isbn13/0) # => "9785053574562, 9787187574302, 9798231475230"
  """
  @spec join(integer, binary, ((integer) -> binary)) :: binary
  def join(n, joiner \\ "", fun) do
    Enum.join(list(n, fun), joiner)
  end

  @doc """
  Get a random digit as a string; one of 0-9
  """
  @spec digit() :: binary
  def digit do
    localised_module().digit
  end

  @doc """
  Converts a list to a string, with "and" before the last item. Uses an Oxford comma.
  """
  @spec to_sentence([binary]) :: binary
  def to_sentence(items) do
    localised_module().to_sentence(items)
  end

  @doc """
  Get a random alphabet character as a string; one of a-z or A-Z
  """
  @spec letter() :: binary
  def letter do
    localised_module().letter
  end

  @doc """
  Get a random lowercase character as a string; one of a-z
  """
  @spec lower_letter() :: binary
  def lower_letter do
    localised_module().lower_letter
  end

  @doc """
  Get a random uppercase character as a string; one of A-Z
  """
  @spec upper_letter() :: binary
  def upper_letter do
    localised_module().upper_letter
  end

  @doc """
  Start a cycle. See cycle/1
  """
  @spec cycle_start([any]) :: pid
  def cycle_start(items) do
    {:ok, cycle_pid} = Agent.start_link(fn -> {[], items} end)
    cycle_pid
  end

  @doc """
  Cycle randomly through the given list with guarantee every element of the list is used once before
  elements are being picked again. This is done by keeping a list of remaining elements that have
  not been picked yet. The list of remaining element is returned, as well as the randomly picked
  element.

  ## Example

      my_cycle = cycle_start ~w(1 2 3)
      cycle my_cycle #=> 2
      cycle my_cycle #=> 3
      cycle my_cycle #=> 1
  """
  @spec cycle(pid) :: any
  def cycle(cycle_pid) do
    Agent.get_and_update(cycle_pid, fn
      {[], items} ->
        [h|t] = Enum.shuffle(items)
        {h, {t, items}}
      {[h|t], items} ->
        {h, {t, items}}
    end)
  end

  @doc """
  Format a string with randomly generated data. Format specifiers are replaced by random values. A
  format specifier follows this prototype:

      %[length]specifier

  The following specifier rules are present by default:

    - **d**: digits 0-9
    - **a**: lowercase letter a-z
    - **A**: uppercase letter A-Z
    - **b**: anycase letter a-z, A-Z

  The specifier rules can be overriden using the second argument.

  ## Examples

      format("%2d-%3d %a%A %2d%%") #=> "74-381 sK 32%"
      format("%8nBATMAN", n: fn() -> "nana " end) #=> "nana nana nana nana nana nana nana nana BATMAN"
  """
  @spec format(binary, Keyword.t) :: binary
  def format(format_str, rules \\ [d: &digit/0, A: &upper_letter/0, a: &lower_letter/0, b: &letter/0]) do
    Regex.replace(~r/%(?:%|(\d*)([a-zA-Z]))/, format_str, &format_replace(&1, &2, &3, rules))
  end

  defp format_replace("%%", _, _, _), do: "%"
  defp format_replace(_, "", rule_char, rules) do
    format_replace(nil, 1, rule_char, rules)
  end
  defp format_replace(_, length_str, rule_char, rules) when is_binary(length_str) do
    format_replace(nil, String.to_integer(length_str), rule_char, rules)
  end
  defp format_replace(_, n, rule_char, rules) when is_integer(n) do
    rule_key = String.to_existing_atom(rule_char)
    case rules[rule_key] do
      fun when is_function(fun) -> join(n, fun)
      _ -> raise "Rule #{rule_key} not found or not a function"
    end
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale)
end
