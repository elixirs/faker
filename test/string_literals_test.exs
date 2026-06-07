defmodule Faker.StringLiteralsTest do
  use ExUnit.Case, async: true

  # Characters that Elixir's tokenizer refuses to accept *unescaped* inside a
  # string literal (it raises "invalid line break character" / "invalid string"
  # at compile time). Newer Elixir versions (1.20+) enforce this strictly, so any
  # source file that embeds one of these raw bytes fails to compile.
  #
  # These must be written using their escaped `\uXXXX` form instead. The codepoints
  # below are the line/paragraph separators plus the Unicode "prepended concatenation
  # mark" format characters.
  @forbidden %{
    0x0085 => "NEXT LINE (NEL)",
    0x0600 => "ARABIC NUMBER SIGN",
    0x0601 => "ARABIC SIGN SANAH",
    0x0602 => "ARABIC FOOTNOTE MARKER",
    0x0603 => "ARABIC SIGN SAFHA",
    0x0604 => "ARABIC SIGN SAMVAT",
    0x0605 => "ARABIC NUMBER MARK ABOVE",
    0x0890 => "ARABIC POUND MARK ABOVE",
    0x0891 => "ARABIC PIASTRE MARK ABOVE",
    0x06DD => "ARABIC END OF AYAH",
    0x070F => "SYRIAC ABBREVIATION MARK",
    0x08E2 => "ARABIC DISPUTED END OF AYAH",
    0x2028 => "LINE SEPARATOR",
    0x2029 => "PARAGRAPH SEPARATOR",
    0x110BD => "KAITHI NUMBER SIGN",
    0x110CD => "KAITHI NUMBER SIGN ABOVE"
  }

  @lib_files Path.wildcard("lib/**/*.ex")

  test "no source file embeds raw characters that are invalid in Elixir string literals" do
    offenders =
      for path <- @lib_files,
          {codepoint, name} <- @forbidden,
          String.contains?(File.read!(path), <<codepoint::utf8>>) do
        hex = codepoint |> Integer.to_string(16) |> String.upcase() |> String.pad_leading(4, "0")
        "#{path}: contains raw U+#{hex} (#{name}) — escape it as \\u#{hex}"
      end

    assert offenders == [],
           "Source files contain characters that newer Elixir rejects in string literals:\n" <>
             Enum.join(offenders, "\n")
  end
end
