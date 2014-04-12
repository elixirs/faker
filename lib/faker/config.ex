defmodule Faker.Config do
  def locale do
    case :application.get_env(:faker, :locale) do
      {:ok, value} -> value
      :undefined -> :en
    end
  end

  def locale(lang) when is_atom(lang) do
    :application.set_env(:faker, :locale, lang)
  end
end
