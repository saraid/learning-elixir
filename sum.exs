defmodule Sum do
  def of([]), do: 0
  def of([head | tail]), do: head + of(tail)
end

defmodule MyList do
  def mapsum([], _), do: 0
  def mapsum([ head | tail ], f), do: f.(head) + mapsum(tail, f)

  def max(list), do: _max(0, list)
  defp _max(num, []), do: num
  defp _max(num, [ head | tail ]) when num <= head, do: _max(head, tail)
  defp _max(num, [ head | tail ]) when num >= head, do: _max(num, tail)

  def caesar(list, num), do: Enum.map(list, fn elem -> elem + num end)

  def span(from, to) do
    _span(from, to, [])
  end
  defp _span(to, to, _), do: [to]
  defp _span(from, to, result), do: [ from | _span(from + 1, to, result) ]
end
