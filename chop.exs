defmodule Chop do
  def guess(actual, actual..actual), do: actual
  def guess(actual, low..high) do
    maybe = div(high-low, 2) + low
    IO.puts("Is it #{maybe}")
    guess(actual, attempt(actual, maybe, low..high))
  end

  def attempt(actual, guess, low.._) when actual < guess do
    low..guess
  end
  def attempt(actual, guess, _..high) when actual > guess do
    guess..high
  end
  def attempt(actual, guess, _) when actual == guess do
    actual..actual
  end
end
