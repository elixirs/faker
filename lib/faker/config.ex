defmodule Faker.Config do
  def locale do
    case :application.get_env(:faker, :locale) do
      {:ok, value} -> value
      :undefined -> :en
    end
  end
end
