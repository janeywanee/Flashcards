require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/guess'
require './lib/flashcards'
require 'pry'

class DeckTest < MiniTest::Test
   def test_deck_test_exists
     card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
     card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
   end

   def Test_deck_holds_cards
     card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
     card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
     
   end

end



# deck = Deck.new([card_1, card_2, card_3])
# deck.cards
# => [card_1, card_2, card_3]
# deck.count
# => 3
