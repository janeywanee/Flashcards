require "pry"
class CardGenerator

  def initialize(cards)
    @cards = []
  end

  def create_cards
    @create_cards << Card.new(line)
  end

  File.readlines("card.txt").each do |line|
    puts line
  end
end



# create a card generator class 
# have a method that returns an array of cards
# in the method you will take the lines and create Cards
# Card.new(line)
