require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'

class CardTest < MiniTest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
  end

  def test_card_exisits
    assert_instance_of Card, @card_1
  end

  def test_it_has_a_question
   assert_equal "What is the capital of Alaska?", @card_1.question
  end

  def test_the_question_has_an_answer
    assert_equal "Juneau", @card_1.answer
  end

end
