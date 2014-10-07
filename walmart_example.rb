require 'net/http'
require 'json'


QUERY_URL = 'http://api.walmartlabs.com/v1/search'
API_KEY = 'g33s38g5xx75p44244y8jr2w'

puts "What product would you like to search for?"
product_search = $stdin.gets.strip

url = URI(QUERY_URL + "?query=#{product_search}&format=json&apikey=#{API_KEY}&sort=relevance")
raw_json = Net::HTTP.get(url)

search_results = JSON.parse(raw_json)
items = search_results["items"]

items.each do |item|
  puts "#{item["name"]}, #{item["saleprice"]}, #{item["itemId"]}, #{item["availableOnline"]}"
  #create item object
  #call setter methods on item object for each attribute
  #add the item object to an array/collection of item objects
end
