require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/flashcards'
require 'pry'

class GuessTest < MiniTest::Test
   def test_guess_test_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    guess_1 = Guess.new("Juneau", card_1)
    assert_instance_of Guess, guess_1
   end

   def test_it_has_a_response

    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_1 = Guess.new("Juneau", card_1)
    guess_2 = Guess.new("Saturn", card_2)
    assert_equal "Juneau", guess_1.response
    assert_equal "Saturn", guess_2.response
   end

   def test_is_guess_correct

    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_1 = Guess.new("Juneau", card_1)
    guess_2 = Guess.new("Saturn", card_2)
    assert guess_1.correct?
    refute guess_2.correct?
   end

   def test_feedback
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_1 = Guess.new("Juneau", card_1)
    guess_2 = Guess.new("Saturn", card_2)
    assert_equal "Correct!", guess_1.feedback
    assert_equal "Incorrect!", guess_2.feedback
   end
end


















#    def test_guess_test_exists
#      card = Card.new("Which planet is closest to the sun?", "Mercury")
#      guess = Guess.new("Saturn", card)
#      assert_instance_of Guess, guess
#    end
#
#    def  test_it_has_a_response
#      card = Card.new("Which planet is closest to the sun?", "Mercury")
#      guess = Guess.new("Saturn", card)
#      assert_equal "Saturn", guess.response
#    end
#
#    def test_if_guess_is_correct
#      card = Card.new("Which planet is closest to the sun?", "Mercury")
#      guess = Guess.new("Saturn", card)
#      refute guess.correct?
#    end
# end






#
# guess.correct?
# => false
# guess.feedback
# => "Incorrect."
