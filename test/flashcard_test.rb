require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcards'
require 'pry'

class CardTest < MiniTest::Test

  def test_card_exisits
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_instance_of Card, card
  end

  def test_it_has_a_question
   card = Card.new("What is the capital of Alaska?", "Juneau")

   assert_equal "What is the capital of Alaska?", card.question
  end

  def test_the_question_has_an_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_equal "Juneau", card.answer
  end

end
