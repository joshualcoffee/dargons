defmodule Dargons.Dice do 
  @moduledoc """
  Module adds functionality to roll any sided dice.
  """

  @dice [
    4,
    6,
    8,
    10,
    12,
    20, 
    100
  ]

  @doc """
  Adds easy to use functions for the default DND dice.
  """
  @dice
  |> Enum.each(fn (d) ->
    def unquote(:"d#{d}")() do
      roll(unquote(d), 1)
    end
  end)
  
  def roll(dice) when is_list(dice) do
    dice
    |> Enum.reduce(%{}, fn( {sides, dice}, acc) -> 
      acc
      |> Map.put(sides, roll(sides, dice))
    end)
  end
  
  def roll(sides, dice \\ 1) do
    rolled_dice = for  _ <- 1..dice, do: Enum.random(1..sides)
    {rolled_dice, rolled_dice |> Enum.sum()}
  end
end