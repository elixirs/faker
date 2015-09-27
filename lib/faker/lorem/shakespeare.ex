defmodule Faker.Lorem.Shakespeare do
  @moduledoc """
  Random quotes from William Shakespeare's plays, sonnets and poems.
  """

  @doc """
  Return random quote from "The Tragedy of Hamlet, Prince of Denmark" tragedy.
  """
  @spec hamlet() :: String.t
  def hamlet do
    Module.concat(__MODULE__, Faker.mlocale).hamlet
  end

  @doc """
  Return random quote from "As You Like It" comedy.
  """
  @spec as_you_like_it() :: String.t
  def as_you_like_it do
    Module.concat(__MODULE__, Faker.mlocale).as_you_like_it
  end

  @doc """
  Return random quote from "Richard III" play.
  """
  @spec king_richard_iii() :: String.t
  def king_richard_iii do
    Module.concat(__MODULE__, Faker.mlocale).king_richard_iii
  end

  @doc """
  Return random quote from "Romeo and Juliet" tragedy.
  """
  @spec romeo_and_juliet() :: String.t
  def romeo_and_juliet do
    Module.concat(__MODULE__, Faker.mlocale).romeo_and_juliet
  end
end
