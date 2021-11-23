defmodule ExqueryTest do
  use ExUnit.Case
  doctest Exquery

  test "greets the world" do
    assert Exquery.hello() == :world
  end
end
