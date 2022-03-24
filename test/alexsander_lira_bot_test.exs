defmodule AlexsanderLiraBotTest do
  use ExUnit.Case
  doctest AlexsanderLiraBot

  test "greets the world" do
    assert AlexsanderLiraBot.hello() == :world
  end
end
