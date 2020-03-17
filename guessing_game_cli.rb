# Code your solution here!
require 'pry' 
def run_guessing_game 
  puts "Guess a number between 1 and 6."
  
  user_input = gets.chomp 
  comp_num = rand(1..6)+1 
  
  if user_input == comp_num.to_s 
    puts "You guessed the correct number!"
    
  elsif user_input == 'exit'
    puts "Goodbye!"
    
  else
    puts "Sorry! The computer guessed #{comp_num}."
  end 
end 
  
  # while user_input != "exit" do 
    
  #   if user_input.to_i == comp_num
  #     puts "You guessed the correct number!"
  #   else 
  #     puts "Sorry! The computer guessed #{comp_num}."
  #   end
    
  #   comp_num = rand(1..6)
  #   user_input = gets.chomp
  # end
  
  # if user_input == "exit"
  #   puts "Goodbye!"
  # end


  