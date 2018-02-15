require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/guess'
require './lib/flashcards'
require 'pry'

class DeckTest < MiniTest::Test
   def setup
     @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
     @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
     @deck = Deck.new([@card_1, @card_2, @card_3])
   end

   def test_deck_exists
     assert_instance_of Deck, @deck
   end

   def test_deck_holds_cards
     assert_equal [@card_1, @card_2, @card_3], Deck.cards
     binding.pry
   end

end



# deck.count
# => 3
