require "pry"
class CardGenerator
  attr_accessor :cards

  def initialize(file)
    @cards = []
    File.open("card.txt", "r").each do |line|
      data = line.split(/\n/)
      question, answer = data.map{ |line| line.split(",") }.flatten
      card = Card.new(question, answer)
      @cards.push(card)
    end
  end
end

  # def create_cards
  #   @create_card << Card.new(line)
  # end




# create a card generator class
# have a method that returns an array of cards
# in the method you will take the lines and create Cards
# Card.new(line)
