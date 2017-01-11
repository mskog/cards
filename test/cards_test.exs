defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "contains?" do
    deck = Cards.create_deck
    assert Cards.contains?(deck, "Ace of Hearts") == true
    assert Cards.contains?(deck, "King of Clubs") == false
  end
end
