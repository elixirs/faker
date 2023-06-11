defmodule Benchemarking do

  def run do
    test_country()
  end

  defp test_country do
    Benchee.run(%{
      "country_test_from_list" => fn -> Faker.Address.En.country end,
      "country_test_from_file" => fn -> Faker.Address.En.country_test end
      },
      formatters: [
        Benchee.Formatters.HTML,
        Benchee.Formatters.Console
      ])
  end
end

Benchemarking.run
