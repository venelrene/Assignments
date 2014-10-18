=begin
# Assignment 19
* Create a new repository
* Write a Ruby script that uses the Rails ActiveSupport gem, installed via a Gemfile and bundler
* The script should do the following when run:
=end
require 'date'
require 'active_support/all'

#1. Show the date of the beginning of the current week
print "Date of the beginning  of the current week:"
puts Date.current.beginning_of_week
#2. Show what the date will be in 30 days
print "In 30 days the Date will be:\n"
puts Date.current + 30.days

#3. Show what day of the week today's date will fall on next year
print "Next year, today's date will be:\n"
puts  Date.current.years_since(1).strftime('%A')

#4. Show what day of the week the user's birthday will be on this year (don't forget to ask for it!)
print "When is your Birthday this year? (2014-MM-DD):\n"
  birthdate = Date.parse($stdin.gets.chomp)
  next_year = birthdate + 1.year
  day_of_the_week = next_year.strftime('%A')
puts "Next year your Birthday will be on #{day_of_the_week}!"

#5. Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
print "I can Pluralize what ever word you type, try me?\n"
  plural_word = $stdin.gets.chomp
  pluralize_word = plural_word.pluralize
puts "The plural word you entered was: #{plural_word.capitalize}\nIt is now pluralized: #{pluralize_word.capitalize}!"

print "I can singularize what ever word you type, try me?\n"
  singular_word = $stdin.gets.chomp
  singularize_word = singular_word.singularize
puts "The singular word you entered was: #{singular_word.capitalize}\nIt is now singularize: #{singularize_word.capitalize}!"

#6. Using the String class, truncate a phrase the user enters to 20 letters
print "What is the hardest thing you had to accomplish?\n"
  accomplish = $stdin.gets.chomp
  accomplish.truncate(20, separator:' ')
puts "#{accomplish.truncate(20, separator:' ')}..sorry, we had to cut you short."
#7. Using the Array class, convert an array of three words to a sentence with one command
puts %w(You Ran Fast).to_sentence
