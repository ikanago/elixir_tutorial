defmodule App do
  @moduledoc """
  Documentation for `App`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> App.hello()
      :world

  """
  def main do
    IO.puts(len([1, 2, 3]))
  end

  def len([]), do: 0
  def len([head|tail]), do: 1 + len(tail)
end
