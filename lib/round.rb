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
    @guesses << Guess.new(response,current_card)
    response
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
       puts "Welcome! You're playing with #{deck.count} cards."
       puts "-------------------------------------------------"

       deck = Deck.new
       round = Round.new(deck)

      until round.card_number do
        puts "This is card number #{round.current_card} out of 4."
        puts "Question: What is 5 + 5?"
        command = gets.chomp
        if command == 10
          puts "Correct!"
        else
          puts "Incorrect!"
        end
        end
      end
  end
