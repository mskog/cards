defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "contains?" do
    deck = Cards.create_deck
    assert Cards.contains?(deck, "Ace of Hearts") == true
    assert Cards.contains?(deck, "King of Clubs") == false
  end

  test "deal" do
    deck = Cards.create_deck
    {hand, rest_of_deck} = Cards.deal(deck, 5)
    assert length(hand) == 5
    assert length(rest_of_deck) == length(deck) - 5
  end
end
