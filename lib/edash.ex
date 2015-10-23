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
end
