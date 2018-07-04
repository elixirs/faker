defmodule Faker.LoremTest do
  use ExUnit.Case, async: true

  doctest Faker.Lorem

  test "characters/0" do
    assert length(Faker.Lorem.characters()) in 15..255
  end

  test "characters/1" do
    assert is_list(Faker.Lorem.characters(2..10))
    assert is_list(Faker.Lorem.characters(2))
    assert length(Faker.Lorem.characters(2..10)) in 2..10
    assert length(Faker.Lorem.characters(2)) == 2
    assert length(Faker.Lorem.characters(10)) == 10
  end

  test "paragraph/0" do
    assert length(Regex.scan(~r/[.,?!]/, Faker.Lorem.paragraph())) in 2..5
  end

  test "paragraph/1" do
    assert length(Regex.scan(~r/[.,?!]/, Faker.Lorem.paragraph(2..3))) in 2..3
    assert length(Regex.scan(~r/[.,?!]/, Faker.Lorem.paragraph(2))) == 2
    assert length(Regex.scan(~r/[.,?!]/, Faker.Lorem.paragraph(3))) == 3
  end

  test "paragraphs/0" do
    assert is_list(Faker.Lorem.paragraphs())
    assert length(Faker.Lorem.paragraphs()) in 2..5
  end

  test "paragraphs/1" do
    assert is_list(Faker.Lorem.paragraphs(4..6))
    assert is_list(Faker.Lorem.paragraphs(3))
    assert length(Faker.Lorem.paragraphs(4..6)) in 4..6
    assert length(Faker.Lorem.paragraphs(3)) == 3
    assert length(Faker.Lorem.paragraphs(5)) == 5
  end

  test "sentence/0" do
    assert String.ends_with?(Faker.Lorem.sentence(), [".", "!", "?"])
  end

  test "sentence/1" do
    assert String.ends_with?(Faker.Lorem.sentence(4..7), [".", "!", "?"])
    assert String.ends_with?(Faker.Lorem.sentence(4), [".", "!", "?"])
  end

  test "sentence/2" do
    assert String.ends_with?(Faker.Lorem.sentence(4, "?"), "?")
  end

  test "sentences/0" do
    assert is_list(Faker.Lorem.sentences())
    assert length(Faker.Lorem.sentences()) in 2..5
  end

  test "sentences/1" do
    assert is_list(Faker.Lorem.sentences(4..6))
    assert is_list(Faker.Lorem.sentences(3))
    assert length(Faker.Lorem.sentences(4..6)) in 4..6
    assert length(Faker.Lorem.sentences(3)) == 3
    assert length(Faker.Lorem.sentences(5)) == 5
  end

  test "words/0" do
    assert is_list(Faker.Lorem.words())
    assert length(Faker.Lorem.words()) in 3..6
  end

  test "words/1" do
    assert is_list(Faker.Lorem.words(10..16))
    assert is_list(Faker.Lorem.words(3))
    assert length(Faker.Lorem.words(10..16)) in 10..16
    assert length(Faker.Lorem.words(3)) == 3
    assert length(Faker.Lorem.words(5)) == 5
  end
end
