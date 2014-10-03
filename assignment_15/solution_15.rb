# Assignment 15
#  Modify assignment 12 to read the questions from a file instead of the hardcoded array
#  Load them into an array so the rest of the program can remain the same
#  Note, you should use `.each` to iterate. Therefore, you can drop the requirement to start over and ask the questions again.



qfile = File.new('assignment_12/solution_12.txt')
questions = qfile.readlines



# "What's your favorite color?"
# "What's your favorite genre?"
# "What's your favorite letter?"
=begin
count_this = 0

  questions.each do |question|
    puts "#{question}"
    user_answer = $stdin.gets.chomp
    count_this += 1
    puts "Press ENTER to END"
  break if user_answer.length == 0

end
=end
