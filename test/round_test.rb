require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/deck'
require './lib/guess'
require './lib/flashcards'
require 'pry'

class RoundTest < MiniTest::Test
   def setup
     @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     @card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
     @deck = Deck.new([@card_1, @card_2])
     @round = Round.new(@deck)
   end

   def test_round_exists
     assert_instance_of Round, @round
   end

   def test_round_has_a_deck
     assert @deck, @round.deck
   end

   def test_round_has_guesses
     assert_equal [], @round.guesses
   end

   def test_round_has_a_current_card
     assert_equal @card_1 ,@round.current_card
   end

   def test_has_a_record_guess
     assert_equal , @round.record_guess
   end
 end







 # round.record_guess("Juneau")
 # => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @answer="Juneau", @question="What is the capital of Alaska?">, @response="Juneau">



 # round.guesses.count
 # => 1
 # round.guesses.first.feedback
 # => "Correct!"
 # round.number_correct
 # => 1
 # round.current_card
 # => #<Card:0x007ffdf1820a90 @answer="93,000,000", @question="Approximately how many miles are in one astronomical unit?">
 # round.record_guess("2")
 # => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @answer="93,000,000", @question="Approximately how many miles are in one astronomical unit?">, @response="2">
 # round.guesses.count
 # => 2
 # round.guesses.last.feedback
 # => "Incorrect."
 # round.number_correct
 # => 1
 # round.percent_correct
 # => 50
