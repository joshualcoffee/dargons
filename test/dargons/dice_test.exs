defmodule Dargons.DiceTest do
  use ExUnit.Case
  alias Dargons.Dice

  describe "rolling dice" do
    test "rolling a single D20" do
      {_, sum} = dice = Dice.roll(20)
      assert sum <= 20
    end

    test "rolling multiple D20's" do
      {dice, _} = Dice.roll(20, 3)

      dice
      |> Enum.each(&assert &1 <= 20)

      assert length(dice) == 3
    end

    test "rolling multiple different dice" do
      dice = Dice.roll([{20, 2}, {8, 3}]) 
      {eight_d_dice, _} = Map.get(dice, 8)
      {twenty_d_dice, _} = Map.get(dice, 20)
      assert length(eight_d_dice) == 3
      assert length(twenty_d_dice) == 2
    end

    test "rolling named dice" do 
      assert Dice.d4()
      assert Dice.d6()
      assert Dice.d8()
      assert Dice.d10()
      assert Dice.d12()
      assert Dice.d20()
      assert Dice.d100()
    end
  end
end
