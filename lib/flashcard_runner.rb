require './lib/round'
require './lib/deck'
# require './lib/guess'
# require './lib/card'
class FlashCardRunner

 def start
   puts "Welcome! You're playing with 4 cards."
   puts "-------------------------------------------------"
   deck = Deck.new
   round = Round.new(deck)

  until round.card_number do
    puts "This is card number 1 out of 4."
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


flashcard = FlashCardRunner.new
flashcard.start












#
# 10
# Correct!
# This is card number 2 out of 4.
# Question: What is Rachel's favorite animal?
# panda
# Incorrect.
# This is card number 3 out of 4.
# Question: What is Mike's middle name?
# nobody knows
# Correct!
# This is card number 4 out of 4.
# Question: What cardboard cutout lives at Turing?
# Justin Bieber
# Correct!
# ****** Game over! ******
# You had 3 correct guesses out of 4 for a score of 75%.
