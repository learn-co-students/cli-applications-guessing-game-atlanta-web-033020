require 'pry'

def run_guessing_game
  my_num = rand(6) + 1
  puts "Guess a number between 1 and 6."
  guess = gets.chomp
  if guess == my_num.to_s
    puts "You guessed the correct number!"
  elsif guess == 'exit'
    puts "Goodbye!"
  elsif guess != my_num.to_s || 'exit'
    puts "Sorry! The computer guessed #{my_num}."
  end
end