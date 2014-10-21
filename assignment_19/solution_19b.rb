# Identify elements quiz

Answer the following questions using the code shown in this gist: https://gist.github.com/brianburridge/d6b5078f9d627a9aeddf

*Note the line numbers in the gist are referenced below.*

#1. On line 1, what is being defined?
Team is being define as a class

#2. What type of scope is the variable on line 2?
class variable

#3. Explain the difference between the three attr_ methods on lines 4, 5, and 6.
line 4:Both read and write  line 5: you can only read  line 6: you can only write
they all also create methods

#4. On line 8, what is defined?
initialize is being defined(an instance method is being define) to add one everytime a new team_count is created

#5. What is the purpose of line 9?
adding 1 to everytime the instance variable team_count is called

#6. What type of method is defined on line 12?
a self or top level method. defining a class method

#7. On line 17, could single quotes be used instead of double quotes? Why?
no because your single quotes doesnt allow you to embed variables.


#8. What is line 21 doing?
i have no idea; seems like set_the_city is begining define as a method under private

#9. What is the purpose of line 25?
setting everything under and after it to private cant be called i think


#10. What code can call the method defined on line 27?
set_the_city

In the following code, how many objects are created and what are their types?

11.

    file = File.new('content.txt')
    content = file.read
 3, file, string, string literal

12.

    file = File.read('content.txt')

 2, both string

13.

    user = User.new
    user.name = 'Me'
    user.city = 'St. Petersburg'

 3 = two string and user

14.In the following code, what type of variable (that is, what scope) is `count`?

    def repeat
      limit = 10
      count = 0
      while count < limit
        puts count
        count += 1
      end
    end

    repeat
    puts count

 local variable

15.In the code from #14, what will happen on the last line and why?
It will end that define class
puts will not show the finle count because counts ended in the local scope
