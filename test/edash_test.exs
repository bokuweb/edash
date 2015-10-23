defmodule EdashTest do
  use ExUnit.Case
  doctest Edash

  test "compact/1" do
    assert(Edash.compact([0, 1, false, 2, '', "", 3]) === [1, 2, 3])
  end

  test "difference/2" do
    assert(Edash.difference([1, 2, 3], [4, 2]) === [1, 3])
  end
end
