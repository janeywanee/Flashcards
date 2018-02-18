require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/deck'
require './lib/guess'
require './lib/card'
require 'pry'

class RoundTest < MiniTest::Test
   def setup
     @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     @card_2 = Card.new("Approximately how many miles are in one astronomical unit?",
                        "93,000,000")
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
     assert_equal @card_2 ,@round.current_card
   end

   def test_has_a_record_guess
     assert_equal "Juneau", @round.record_guess("Juneau")
     assert_equal "93,000,000", @round.record_guess("93,000,000")
   end

   def test_count_guesses_in_round
     @round.record_guess("Juneau")
     assert_equal 1, @round.guesses.count

     @round.record_guess("93,000,000")
     assert_equal 2, @round.guesses.count
   end

   def test_has_feedback
      @round.record_guess("Juneau")
      assert_equal "Correct!",@round.guesses.first.feedback

      @round.record_guess("10,000")
      assert_equal "Incorrect.",@round.guesses.last.feedback
   end

   def test_correct_num_of_guesses
      @round.record_guess("Juneau")
      assert_equal 1, @round.number_correct

      @round.record_guess("93,000,000")
      assert_equal 2, @round.number_correct
   end

   def test_it_can_generate_a_test_count
     assert_equal"2", @round.record_guess("2")
   end

   def test_has_a_correct_percent
     @round.record_guess("Juneau")
     @round.record_guess("10,000")
     assert_equal 50, @round.percent_correct
   end

 end










 # round.percent_correct
 # => 50
