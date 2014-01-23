defmodule Chop do
  def guess(actual, actual..actual), do: actual
  def guess(actual, range) do
    maybe = halfway(range)
    IO.puts("Is it #{maybe}")
    guess(actual, attempt(actual, maybe, range))
  end

  def halfway(low..high), do: div(high-low, 2) + low

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
