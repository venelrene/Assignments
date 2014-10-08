# Assignment 21
## First
# Create a Person class with attributes: first name, last name, and birthdate.
# First name and last name should not be able to be written to, but should be readable.
# Birthdate can be set and read.
class Person
  attr_reader :first_name, :last_name
  attr_accessor :birthdate

#Create a public instance method called 'name' that takes the name and sets the first name and last name instance variables.
  def name(entered_name)
    split_name = entered_name.split
    @first_name = split_name[0].capitalize
    @last_name = split_name[1].capitalize
  end
#Create a public instance method to get the user's age.

  def age
    puts "Enter age"
    enter_age = gets.chomp.to_i
  end
end
#Ask the user their name as one question, but store it separately in first and last name  variables.
  new_user = Person.new
  print "What is your first and last name?"
  entered_name = gets.chomp

#As you ask the user their information, create a User object.
new_user.name(entered_name)

#After asking each user their information, output the user's age.
user_age = new_user.age

## Next
=begin  !!!!! I need HELP with this PART BELOW
Move the functionality in your age method into a private method called, "calculateAge". This method will be called from the public age method.

Create a class variable that will count the number of users that enter in their information.
 += 1
After you output the user's age, also output the number of user they are so far (using the class variable).

Loop to allow another user to enter their information. (exit when user enters \q for name). Create a User object for each user.
=end
