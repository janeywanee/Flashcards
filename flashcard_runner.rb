require './lib/round'
require './lib/deck'
require './lib/guess'
require './lib/card'
require './lib/card_generator'

filename =  'cards.txt'
cards = CardGenerator.new(filename).cards
deck = Deck.new(cards)
round = Round.new(deck)

def start(round)
  round.start
end

start(round)
