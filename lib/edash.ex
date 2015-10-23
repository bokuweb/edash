defmodule Edash do

  def compact(list) do
    Enum.filter list, fn x ->
      x !== false and
      x !== ""    and
      x !== ''    and
      x !== nil   and
      x !== 0
    end
  end

  def difference(list, values) do
    Enum.filter list, fn l ->
      Enum.all? values, fn v -> l !== v end
    end
  end

  def fill(list, value) do
    Enum.map list, fn l -> value end
  end

  def fill(list, value, start) do
    Enum.with_index(list) |> Enum.map fn {k, v} ->
      if v >= start do value
      else k end
    end
  end

  def fill(list, value, start, end_length) do
    Enum.with_index(list) |> Enum.map fn {k, v} ->
      if v >= start and v < end_length do value
      else k end
    end
  end

  def flatten(list) do
    flatten list, false, []
  end

  def flatten(list, is_deep) do
    flatten list, true, []
  end

  def flatten([], is_deep, acc), do: acc
  def flatten([h|t], is_deep, acc) do
    if is_deep do
      if is_list(h) do flatten h ++ t, is_deep, acc
      else flatten t, is_deep, acc ++ [h] end
    else
      if is_list(h) do flatten t, is_deep, acc ++ h
      else flatten t, is_deep, acc ++ [h] end
    end
  end

  def intersection(list) do
    Enum.reverse(list) |> hd
  end

  def last(list) do
    Enum.reverse(list) |> hd
  end

  def includes([], _), do: false
  def includes(list, target) do
    if h === target do true
    else includes(t, target) end
  end

end

