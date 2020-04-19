require 'pry'

# Code your solution here!
def welcome_player
  puts "Welcome to the game!!"
end

def get_input
  gets.chomp
end

def prompt_user
  puts "Please pick a number between 1 and 6"
end

def generate_number
  rand(1..6)
end

def incorrect_guess(num)
  puts "Sorry! The computer guessed #{num}."
  puts "Please guess again"
end

def correct_guess
  puts "You guessed the correct number!"
end

def compare_guess(guess, number)
  if guess == number then
    correct_guess
  else
    incorrect_guess(guess)
  end
end

def run_guessing_game 
  #welcome_player
  number = rand(1..6)
  
  guess = get_input
  if guess == "exit" then
    puts "Goodbye!"
  else
    compare_guess(guess, number)
  end
    
  
  
end