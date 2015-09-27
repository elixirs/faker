defmodule Faker.Lorem.Shakespeare.En do
  @moduledoc """
  Random quotes from William Shakespeare's plays, sonnets and poems in English.
  """

  @data ["To be, or not to be: that is the question.", "Neither a borrower nor a lender be; For loan oft loses both itself and friend, and borrowing dulls the edge of husbandry.", "This above all: to thine own self be true.", "Though this be madness, yet there is method in 't.", "That it should come to this!", "There is nothing either good or bad, but thinking makes it so.", "What a piece of work is man! how noble in reason! how infinite in faculty! in form and moving how express and admirable! in action how like an angel! in apprehension how like a god! the beauty of the world, the paragon of animals! .", "The lady doth protest too much, methinks.", "In my mind's eye.", "A little more than kin, and less than kind.", "The play 's the thing wherein I'll catch the conscience of the king.", "And it must follow, as the night the day, thou canst not then be false to any man.", "Brevity is the soul of wit.", "Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love.", "Rich gifts wax poor when givers prove unkind.", "Do you think I am easier to be played on than a pipe?", "I will speak daggers to her, but use none.", "When sorrows come, they come not single spies, but in battalions."]
  @data_count Enum.count(@data)
  @doc """
  Return random quote from "The Tragedy of Hamlet, Prince of Denmark" tragedy.
  """
  @spec hamlet() :: String.t
  def hamlet do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["All the world's a stage, and all the men and women merely players. They have their exits and their entrances; And one man in his time plays many parts.", "Can one desire too much of a good thing?.", "I like this place and willingly could waste my time in it.", "How bitter a thing it is to look into happiness through another man's eyes!", "Blow, blow, thou winter wind! Thou art not so unkind as man's ingratitude.", "True is it that we have seen better days.", "For ever and a day.", "The fool doth think he is wise, but the wise man knows himself to be a fool."]
  @data_count Enum.count(@data)
  @doc """
  Return random quote from "As You Like It" comedy.
  """
  @spec as_you_like_it() :: String.t
  def as_you_like_it do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["Now is the winter of our discontent.", "A horse! a horse! my kingdom for a horse!", "Conscience is but a word that cowards use, devised at first to keep the strong in awe.", "So wise so young, they say, do never live long.", "Off with his head!", "An honest tale speeds best, being plainly told.", "The king's name is a tower of strength.", "The world is grown so bad, that wrens make prey where eagles dare not perch."]
  @data_count Enum.count(@data)
  @doc """
  Return random quote from "Richard III" play.
  """
  @spec king_richard_iii() :: String.t
  def king_richard_iii do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["O Romeo, Romeo! wherefore art thou Romeo?.", "It is the east, and Juliet is the sun.", "Good Night, Good night! Parting is such sweet sorrow, that I shall say good night till it be morrow.", "What's in a name? That which we call a rose by any other name would smell as sweet.", "Wisely and slow; they stumble that run fast.", "Tempt not a desperate man.", "For you and I are past our dancing days.", "O! she doth teach the torches to burn bright.", "It seems she hangs upon the cheek of night like a rich jewel in an Ethiope's ear.", "See, how she leans her cheek upon her hand! O that I were a glove upon that hand, that I might touch that cheek!.", "Not stepping o'er the bounds of modesty."]
  @data_count Enum.count(@data)
  @doc """
  Return random quote from "Romeo and Juliet" tragedy.
  """
  @spec romeo_and_juliet() :: String.t
  def romeo_and_juliet do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end
end
