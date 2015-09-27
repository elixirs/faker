defmodule Faker.Lorem.Shakespeare.Ru do
  @moduledoc """
  Random quotes from William Shakespeare's plays, sonnets and poems in Russian.
  """

  @data ["Назовите меня любым инструментом, вы можете расстроить меня, но играть на мне нельзя.", "Есть многое в природе, друг Горацио, что и не снилось нашим мудрецам.", "Бедный Йорик!", "И дальше тишина.", "Как часто нас спасала слепота, Где дальновидность только подводила.", "Но вижу я, в вас скорби маловато!", "Быть иль не быть, вот в чём вопрос.", "О, что за гордый ум сражён!", "О женщины, вам имя — вероломство!", "Пример примерных — пал, пал до конца.", "Мне жизнь моя дешевле, чем булавка, А что он сделает моей душе, Когда она бессмертна, как и он?"]
  @data_count Enum.count(@data)
  @doc """
  Return random quote from "The Tragedy of Hamlet, Prince of Denmark" tragedy.
  """
  @spec hamlet() :: String.t
  def hamlet do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["Дурак думает, что он умен; умный же знает, что глуп он.", "Весь мир — театр. В нем женщины, мужчины — все актеры. У них свои есть выходы, уходы, и каждый не одну играет роль."]
  @data_count Enum.count(@data)
  @doc """
  Return random quote from "As You Like It" comedy.
  """
  @spec as_you_like_it() :: String.t
  def as_you_like_it do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["Коня, коня! Престол мой за коня!", "Нет, не купить любви ценой злодейств!"]
  @data_count Enum.count(@data)
  @doc """
  Return random quote from "Richard III" play.
  """
  @spec king_richard_iii() :: String.t
  def king_richard_iii do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end

  @data ["Нет повести печальнее на свете, чем повесть о Ромео и Джульетте.", "Но если уж мужское слово ненадёжно, чего тогда от женщины ждать можно?", "В минуты отчаянья сойдёт за вечность час...", "Чем лучше цель, тем целимся мы метче.", "Нам губы для молитв даны богами.", "Картина требует красивой рамы, и золотое содержанье книг, нуждается в обложках золотых."]
  @data_count Enum.count(@data)
  @doc """
  Return random quote from "Romeo and Juliet" tragedy.
  """
  @spec romeo_and_juliet() :: String.t
  def romeo_and_juliet do
    Enum.at(@data, :crypto.rand_uniform(0, @data_count))
  end
end
