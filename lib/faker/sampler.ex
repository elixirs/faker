defmodule Faker.Sampler do
  defmacro sampler(name, data) do
    count = Enum.count(data)

    quote do
      def unquote(name)() do
        unquote(data)
        |> Enum.at(:crypto.rand_uniform(0, unquote(count)))
      end
    end
  end
end
