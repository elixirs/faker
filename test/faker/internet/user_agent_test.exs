defmodule InternetUserAgentTest do
  use ExUnit.Case, async: true

  alias Faker.Internet.UserAgent

  test "user_agent/0" do
    assert is_binary(UserAgent.user_agent)
  end

  test "bot_user_agent/0" do
    assert is_binary(UserAgent.bot_user_agent)
  end

  test "desktop_user_agent/0" do
    assert is_binary(UserAgent.desktop_user_agent)
  end

  test "ereader_user_agent/0" do
    assert is_binary(UserAgent.ereader_user_agent)
  end

  test "game_console_user_agent/0" do
    assert is_binary(UserAgent.game_console_user_agent)
  end

  test "set_top_user_agent/0" do
    assert is_binary(UserAgent.set_top_user_agent)
  end

  test "tablet_user_agent/0" do
    assert is_binary(UserAgent.tablet_user_agent)
  end

  test "mobile_user_agent/0" do
    assert is_binary(UserAgent.mobile_user_agent)
  end
end
