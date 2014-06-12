defmodule Faker.Internet do
  data_path = Path.expand(Path.join(__DIR__, "../../priv/internet.json"))
  json = File.read!(data_path) |> JSEX.decode!
  Enum.each json, fn(el) ->
    {lang, data} = el
    Enum.each data, fn
      {"values", values} ->
        Enum.each values, fn({fun, list}) ->
          def unquote(binary_to_atom(fun))() do
            unquote(binary_to_atom("get_#{fun}"))(Faker.locale, :crypto.rand_uniform(0, unquote(binary_to_atom("#{fun}_count"))(Faker.locale)))
          end
          defp unquote(binary_to_atom("#{fun}_count"))(unquote(binary_to_atom(lang))) do
            unquote(Enum.count(list))
          end
          Enum.with_index(list) |> Enum.each fn({el, index}) ->
            defp unquote(binary_to_atom("get_#{fun}"))(unquote(binary_to_atom(lang)), unquote(index)) do
              unquote(el)
            end
          end
        end
      {"functions", values} ->
        Enum.each values, fn({fun, list}) ->
          def unquote(binary_to_atom(fun))() do
            unquote(binary_to_atom(fun))(Faker.locale, :crypto.rand_uniform(0, unquote(binary_to_atom("#{fun}_count"))(Faker.locale)))
          end
          Enum.with_index(list) |> Enum.each fn({el, index}) ->
            defp unquote(binary_to_atom(fun))(unquote(binary_to_atom(lang)), unquote(index)) do
              unquote(Code.string_to_quoted!('"#{el}"'))
            end
          end
          defp unquote(binary_to_atom("#{fun}_count"))(unquote(binary_to_atom(lang))) do
            unquote(Enum.count(list))
          end
        end
    end
  end

  def ip_v4_address do
    Enum.map_join 1..4, ".", fn(_part) ->
      :crypto.rand_uniform(0, 255)
    end
  end

  def ip_v6_address do
    Enum.map_join 1..8, ":", fn(_part) ->
      integer_to_binary(:crypto.rand_uniform(0, 65536), 16)
      |> String.rjust(4, ?0)
    end
  end

  def mac_address do
    Enum.map_join(1..6, ":", fn(_part) ->
      integer_to_binary(:crypto.rand_uniform(0, 256), 16)
      |> String.rjust(2, ?0)
    end) |> String.downcase
  end
end
