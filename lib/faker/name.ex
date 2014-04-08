defmodule Faker.Name do
  import Faker.Config, only: [locale: 0]

  locale_file = "../../priv/locales/en.json"
  locale_path = Path.expand(Path.join(__DIR__, locale_file))
  {:ok, json} = File.read(locale_path)
  {:ok, json} = JSEX.decode(json, [{:labels, :binary}])
  [{locale, modules}] = json
  functions = Dict.get(HashDict.new(modules), "name")
  Enum.each functions, fn({fun, list}) ->
    defp unquote(binary_to_atom("#{fun}_count"))(unquote(binary_to_atom(locale))) do
      unquote(Enum.count(list))
    end
    Enum.each Enum.with_index(list), fn({el, index}) ->
      defp unquote(binary_to_atom("get_#{fun}"))(unquote(binary_to_atom(locale)), unquote(index+1)) do
        unquote(el)
      end
    end
  end

  def first_name do
    get_first_name(locale, :crypto.rand_uniform(1, first_name_count(locale)))
  end

  def last_name do
    get_last_name(locale, :crypto.rand_uniform(1, last_name_count(locale)))
  end

  def name do
    name(:crypto.rand_uniform(1, 10))
  end

  def prefix do
    get_prefix(locale, :crypto.rand_uniform(1, prefix_count(locale)))
  end

  def suffix do
    get_suffix(locale, :crypto.rand_uniform(1, suffix_count(locale)))
  end

  def title do
    "#{title_descriptor} #{title_level} #{title_job}"
  end

  defp name(1) do
    "#{prefix} #{first_name} #{last_name} #{suffix}"
  end

  defp name(2) do
    "#{prefix} #{first_name} #{last_name}"
  end

  defp name(3) do
    "#{first_name} #{last_name} #{suffix}"
  end

  defp name(n) when is_integer(n) do
    "#{first_name} #{last_name}"
  end

  defp title_descriptor do
    get_title_descriptor(locale, :crypto.rand_uniform(1, title_descriptor_count(locale)))
  end

  defp title_level do
    get_title_level(locale, :crypto.rand_uniform(1, title_level_count(locale)))
  end

  defp title_job do
    get_title_job(locale, :crypto.rand_uniform(1, title_job_count(locale)))
  end
end
