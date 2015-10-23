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
      if v >= start do
        value
      else
        k
      end
    end
  end

  def fill(list, value, start, a) do
    Enum.with_index(list) |> Enum.map fn {k, v} ->
      if v >= start and v < a do
        value
      else
        k
      end
    end
  end
end

