defmodule Edash do
  def chunk([h|t]), do: [[h],t]
  def chunk(list, size), do: chunk(list, size, [], [])
  def chunk(_, 0, acc1, acc2), do: [acc1, acc2]
  def chunk([], _, acc1, acc2), do: [acc1, acc2]
  def chunk([h|t], size, acc1, acc2) do
    if size >= 0, do: chunk(t, size-1, acc1 ++ [h], t)
    else []
  end

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
end
