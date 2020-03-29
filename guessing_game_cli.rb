require "pry"

# Code your solution here!
def welcome_player
  puts "Welcome to the game!!"
end

def first_pick
  binding.pry
  prompt_user
  generate_number
end

def repick
  puts "I have picked another number"
  prompt_user
  generate_number
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
    number = repick
  else
    incorrect_guess(guess)
  end
end

def run_guessing_game 
  welcome_player
  binding.pry
  number = first_pick
  binding.pry
  guess = 0
  continue_game = true
  
  while continue_game do
    guess = get_input
    if guess == "exit" then
      continue_game = false
    elseif guess >= 1 && guess <=6
      compare_guess(guess, number)
    else
      puts "That is not a valid guess."
      prompt_user
    end
  end
    
  puts "Goodbye"
  
end