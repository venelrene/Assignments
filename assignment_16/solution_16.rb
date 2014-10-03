require 'net/http'

# To get the uri from the website you desire
uri = URI('http://www.scifiscripts.com/scripts/alien3_fasano.txt')
# making a new file that i can write on
file = File.new('solution_16.txt', 'a')
# grabbing the uri and changing it to a string
script_text = Net::HTTP.get(uri)
# now its a string under a variable
#save it in file
file.write(script_text)
