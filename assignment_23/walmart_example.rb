=begin
# Assignment 23
* Take what we did in class with the Walmart API, and expand it to include the following functionality:
* When the user searches for a product, allow the user to enter the product id (from the search results).
For the product indicated, create an InvoiceItem object and add it to your Invoice object
* Add the category to the InvoiceItem
* After the user adds a product to the invoice (using your InvoiceItem class), loop and allow them to search again
* When the user hits ENTER instead of a SEARCH term or a product id, print out the same result as in Assignment 22.
=end

load 'walmart_example_class.rb'
require 'net/http'
require 'json'
require 'active_support/all'


QUERY_URL = 'http://api.walmartlabs.com/v1/search'
API_KEY = 'g33s38g5xx75p44244y8jr2w'

invoice = Invoice.new
invoice_item = InvoiceItem.new

loop do
  puts "What product would you like to search for?"
  product_search = $stdin.gets.strip
  break if product_search.length == 0

  url = URI(QUERY_URL + "?query=#{product_search}&format=json&apikey=#{API_KEY}&sort=relevance")
  raw_json = Net::HTTP.get(url)
  search_results = JSON.parse(raw_json)
  items = search_results["items"]
  #create item object
  #call setter methods on item object for each attribute
  #add the item object to an array/collection of item objects
  items.each do |item|
    puts "#{item["name"]}, #{item["saleprice"]}, #{item["itemId"]}, #{item["availableOnline"]}"
  end
  # When the user searches for a product, allow the user to enter the product id (from the search results).
  puts "From the list above narrow your search by product ID or Press ENTER to Quit"
  product_id = $stdin.gets.strip.to_i
  break if product_id == 0
  #select allows me look into the array item
  #narrow or select the itemID that is equal to product_id
  item_id = items.select {|item| item["itemId"] == product_id}
  item_id.each do |item|
  puts "#{item["name"]}, #{item["saleprice"]}, #{item["itemId"]}, #{item["availableOnline"]}: has been added to your Invoice"
end
  # For the product indicated, create an InvoiceItem object and add it to your Invoice object
  invoice_item.name << item["name"]
  invoice_item.salePrice << item["saleprice"]
  invoice_item.itemId << item["itemId"]
  invoice_item.availableOnline << item["availableOnline"]
  invoice.items << invoice_item

end

#
#   puts ""
