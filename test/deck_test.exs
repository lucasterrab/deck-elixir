defmodule DeckTest do
  use ExUnit.Case
  doctest Deck

  test "create_deck makes 52 cards" do
    deck_length = length(Deck.create_deck)
    assert deck_length == 52
  end

  test "shuffling a deck randomizes it" do
    deck = Deck.create_deck()
    refute deck == Deck.shuffle(deck)
  end
end
