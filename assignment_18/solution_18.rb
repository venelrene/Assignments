=begin
# Assignment 18: Movie Querying script
# Use IMDB's movie querying script to create a command line app which prompts the user for a movie title
* Using the entered movie title, search via the API for the movie's plot
* Print the plot to the screen
=end
require 'net/http'
require 'uri'

print "Name a movie?\n"
movie = gets.chomp

parms =  movie

uri = URI('http://www.myapifilms.com/imdb?title=' + movie)

response = Net::HTTP.get_response(uri)

print response.body
