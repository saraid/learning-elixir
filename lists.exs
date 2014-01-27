defmodule Lists do
  def all?([], func), do: true
  def all?([head | tail], func), do: func.(head) and all?(tail, func)

  def each(list, func), do: lc x inlist list, do: func.(x)
end
