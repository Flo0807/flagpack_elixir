defmodule FlagpackTest do
  use ExUnit.Case
  doctest Flagpack

  test "greets the world" do
    assert Flagpack.hello() == :world
  end
end
