require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require 'pry'

class GuessTest < MiniTest::Test
   def setup
     @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     @card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
     @guess_1 = Guess.new("Juneau", @card_1)
     @guess_2 = Guess.new("Saturn", @card_2)
   end

   def test_guess_test_exists
    assert_instance_of Guess, @guess_1
   end

   def test_guess_has_a_card_method
     assert  @guess_1.card
   end

   def test_it_has_a_response
    assert_equal "Juneau", @guess_1.response
    assert_equal "Saturn", @guess_2.response
   end

   def test_is_guess_correct
    assert @guess_1.correct?
    refute @guess_2.correct?
   end

   def test_feedback
    assert_equal "Correct!", @guess_1.feedback
    assert_equal "Incorrect.", @guess_2.feedback
   end
end
