defmodule Faker.File do
  @extensions %{
    image: ~w(bmp gif jpeg jpg png tiff),
    audio: ~w(flac mp3 wav),
    text: ~w(css csv html js json txt),
    video: ~w(mp4 avi mov webm),
    office: ~w(doc docx xls xlsx ppt pptx odt ods odp pages numbers key pdf)
  }

  @mimes %{
    application: ~w(application/atom+xml application/ecmascript application/EDI-X12 application/EDIFACT application/json application/javascript application/ogg application/pdf application/postscript application/rdf+xml application/rss+xml application/soap+xml application/font-woff application/xhtml+xml application/xml-dtd application/xop+xml application/zip application/gzip),
    audio: ~w(audio/basic audio/L24 audio/mp4 audio/mpeg audio/ogg audio/vorbis audio/vnd.rn-realaudio audio/vnd.wave audio/webm),
    image: ~w(image/gif image/jpeg image/pjpeg image/png image/svg+xml image/tiff image/vnd.microsoft.icon),
    message: ~w(message/http message/imdn+xml message/partial message/rfc822),
    model: ~w(model/example model/iges model/mesh model/vrml model/x3d+binary model/x3d+vrml model/x3d+xml),
    multipart: ~w(multipart/mixed multipart/alternative multipart/related multipart/form-data multipart/signed multipart/encrypted),
    text: ~w(text/cmd text/css text/csv text/html text/javascript text/plain text/vcard text/xml),
    video: ~w(video/mpeg video/mp4 video/ogg video/quicktime video/webm video/x-matroska video/x-ms-wmv video/x-flv)
  }
 
  @categories_extensions Map.keys(@extensions)
  @categories_mimes Map.keys(@mimes)

  def file_extension(category) do
    get_extensions_from_category(category) |> pick
  end

  def file_extension do
    @categories_extensions 
      |> pick
      |> file_extension
  end

  def file_name do
    Faker.Lorem.word <> "." <> file_extension()
  end

  def file_name(category) do
    Faker.Lorem.word <> "." <> file_extension(category)
  end

  def mime_type(category) do
    get_mimes_from_category(category) |> pick
  end

  def mime_type do
    @categories_mimes
      |> pick
      |> mime_type
  end

  defp get_mimes_from_category(category) do
    @mimes[category]
  end

  defp get_extensions_from_category(category) do
    @extensions[category]
  end

  defp pick(list) do
    list |> Enum.random
  end

end