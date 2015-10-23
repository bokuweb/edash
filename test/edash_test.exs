defmodule EdashTest do
  use ExUnit.Case
  doctest Edash

  test "compact/1" do
    assert(Edash.compact([0, 1, false, 2, '', "", 3]) === [1, 2, 3])
  end

  test "difference/2" do
    assert(Edash.difference([1, 2, 3], [4, 2]) === [1, 3])
  end

  test "fill/2" do
    assert(Edash.fill([1, 2, 3], "a") === ["a", "a", "a"])
  end

  test "fill/3" do
    assert(Edash.fill([1, 2, 3], "a", 1) === [1, "a", "a"])
  end

  test "fill/4" do
    assert(Edash.fill([4, 6, 8], "*", 1, 2) === [4, "*", 8])
  end
end
