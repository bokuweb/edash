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

  test "flatten/1" do
    assert(Edash.flatten([1, [2, [3],[4]],[5]]) === [1, 2, [3], [4], 5])
  end

  test "flatten/2" do
    assert(Edash.flatten([1, [2, [3],[4]],[5]], true) === [1, 2, 3, 4, 5])
  end

  test "last/1" do
    assert(Edash.last([1, 2, 3]) === 3)
  end

  test "includes/1" do
    assert(Edash.includes([1, 2, 3], 3) === true)
  end
  
  test "test" do
    IO.inspect Enum.find_index([2, 3, 4], fn(x) -> rem(x, 2) == 0 end)
    #Enum.map([1, [2, [3]]], fn(x) -> IO.inspect x end)
    #IO.inspect hd([1,2,3])
    #users = [
    #  { :user, "barney",  :active, false },
    #  { :user, "fred",    :active, false },
    #  { :user, "pebbles", :active, true }
    #]
    #Enum.find_index(users, fn(x) -> IO.inspect x end)
  end
end
