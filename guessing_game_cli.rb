def run_guessing_game
  num = rand(6) + 1

  user_input = gets.chomp
  
  if num == user_input.to_i
    puts "You guessed the correct number!"
  elsif user_input == "exit"
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed #{num}."
  end
end