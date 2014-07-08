defmodule Faker.Core do
  def decode_dict(file_basename) do
    dict_path(file_basename) |> File.read! |> JSEX.decode!
  end

  defp dict_path(file_basename) do
    Path.expand(
      Path.join(__DIR__, "../../priv/#{file_basename}.json")
    )
  end
end
