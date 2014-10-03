=begin
# Assignment 13
* Create a guessing game
* The user must guess the number chosen by the app
* Provide feedback to the user as to if their guess is lower or higher than then number
* Count the number of guesses and display at the end
=end
number = rand(1..10)
i = 1

loop do

  print "Guess the number I'm thinking of between 1-10?\n"
  user_guess = $stdin.gets.chomp.to_i

  if user_guess > number
    puts "Your number is too HIGH! guess again"
  elsif user_guess < number
    puts "Your too LOW! guess again"
  else
    puts "Good Job! YOU WON"
    puts i
    break
  end
  i += 1
end
