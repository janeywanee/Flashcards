class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @correct_guesses = 0
    @card_number = 0
  end

  def current_card
    @current_card = @deck.cards[@card_number]
    @card_number += 1
    @current_card
  end

  def record_guess(response)
    result = Guess.new(response, current_card)
    @guesses << result
    result
  end

  def number_correct
    number_correct = @guesses.find_all do |number|
      number.correct?
    end
    @correct_guesses = number_correct.count
  end

  def percent_correct
    ((number_correct.to_f / @guesses.count) * 100).to_i
  end

  def start
    game_introduction
    card_loop
  end

  def game_introduction
    puts "Welcome! You're playing with #{deck.count} cards."
    puts "-------------------------------------------------"
  end

  def card_loop
    @deck.cards.each.with_index(1) do |card, index|
    puts "This is card number #{index} out of #{@deck.count}."
    puts "Question: #{card.question}"
    response = gets.strip
    guess = record_guess(response)
    puts guess.feedback
    end
  end

end
