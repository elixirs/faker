defmodule Faker.Team do
  json = Faker.Core.decode_dict "team"
  Enum.each json, fn(el) ->
    {lang, data} = el
    Enum.each data, fn
      {"values", values} ->
        Enum.each values, fn({fun, list}) ->
          def unquote(String.to_atom(fun))() do
            unquote(String.to_atom("get_#{fun}"))(Faker.locale, :crypto.rand_uniform(0, unquote(String.to_atom("#{fun}_count"))(Faker.locale)))
          end
          defp unquote(String.to_atom("#{fun}_count"))(unquote(String.to_atom(lang))) do
            unquote(Enum.count(list))
          end
          Enum.with_index(list) |> Enum.each fn({el, index}) ->
            defp unquote(String.to_atom("get_#{fun}"))(unquote(String.to_atom(lang)), unquote(index)) do
              unquote(el)
            end
          end
        end
      {"functions", values} ->
        Enum.each values, fn({fun, list}) ->
          def unquote(String.to_atom(fun))() do
            unquote(String.to_atom(fun))(Faker.locale, :crypto.rand_uniform(0, unquote(String.to_atom("#{fun}_count"))(Faker.locale)))
          end
          Enum.with_index(list) |> Enum.each fn({el, index}) ->
            defp unquote(String.to_atom(fun))(unquote(String.to_atom(lang)), unquote(index)) do
              unquote(Code.string_to_quoted!('"#{el}"'))
            end
          end
          defp unquote(String.to_atom("#{fun}_count"))(unquote(String.to_atom(lang))) do
            unquote(Enum.count(list))
          end
        end
    end
  end
end
