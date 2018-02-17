class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards[guesses.length]
  end

  def record_guess(response)
    @guesses << Guess.new(response,current_card)
    response
  end

  def guesses_count
    @guesses = 0
    # @guesses.each do |i|
      # if i.feedback == "Correct!"
        # @guess_total += 1
      # end
  end
end
