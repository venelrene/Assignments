# Assignment 17 - in class
# Convert the questions from assignment 15 to a JSON file
# Read and parse the JSON into an array so the rest of the app remains the same


# questions = ["What's your favorite color?", "What's your favorite genre?", "What's your favorite letter?"]

require 'json'
# Pulling the file as readable from a outside source "question.json" in a variable "json_file"
file = File.read('assignment_17/question.json')
#Taking taking the JSON file and parsing it into Questions
questions = JSON.parse(file)



count_this = 0

  questions.each do |question|
    puts "#{question}"
    user_answer = $stdin.gets.chomp
    count_this += 1
    puts "Press ENTER to END"
  break if user_answer.length == 0

end
