defmodule HyperledgerFabricTest do
  use ExUnit.Case
  doctest HyperledgerFabric

  test "greets the world" do
    assert HyperledgerFabric.hello() == :world
  end
end
