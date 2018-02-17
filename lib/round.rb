class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @correct_guesses = 0
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
  end

  def number_correct
    number_correct = @guesses.find_all do |number|
      number.correct?
    end
    @correct_guesses = number_correct.count
  end

end
