require 'ur'
require 'net/http'
QUERY_URL = 'http://www.myapifilms.com/tmdb/searchMovie'


loop do
  print "What is your favorite movie from IMDB's movie querying?\n"
  favorite_movie = gets.chomp
  break if favorite_movie.length == 0

  puts "Searching for #{favorite_movie}...."

  uri = URI(QUERY_URL + "?title=#{URI.escape(favorite_movie)}")

  response = Net::HTTP.get(uri)

  print response.read

end
