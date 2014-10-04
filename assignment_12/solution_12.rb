# Assignment 12
# Create an array of questions
# Ask a question of the user, from the array
# Continue asking questions until the user enters without giving an answer
# When you run out of gquestions, start over
# For extra credit: Save all the answers with the questions, and print a summary at the end

questions = ["What's your favorite color?", "What's your favorite genre?", "What's your favorite letter?"]


count_this = 0

  questions.each do |question|
    puts "#{question}"
    user_answer = $stdin.gets.chomp
    count_this += 1
    puts "Press ENTER to END"
  break if user_answer.length == 0

end
