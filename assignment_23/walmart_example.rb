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
  puts "Search for a product  (Press ENTER to Quit & see Invoice)"
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
    puts "#{item["name"]}, #{item["salePrice"]}, #{item["itemId"]}, #{item["availableOnline"]}"
  end
  # When the user searches for a product, allow the user to enter the product id (from the search results).
  puts "From the list above narrow your search by product ID "
  product_id = $stdin.gets.strip.to_i
  break if product_id == 0
  #select allows me look into the array item
  #narrow or select the itemID that is equal to product_id
  item_id = items.select {|item| item["itemId"] == product_id}
  item_id.each do |item|
    puts "#{item["name"]}, #{item["saleprice"]}, product ID:#{item["itemId"]}, #{item["availableOnline"]}"
    # For the product indicated, create an InvoiceItem object and add it to your Invoice object
    invoice_item.name = item["name"]
    invoice_item.salePrice = item["salePrice"]
    invoice_item.itemId = item["itemId"]
    invoice_item.availableOnline = item["availableOnline"]

    puts "How many #{item["name"]} do you want added to your invoice?"
    invoice_item.quantity = $stdin.gets.strip.to_i
    break if invoice_item.quantity == 0
    invoice.items << invoice_item

  end
end
puts "Here is your Invoice"
invoice.items.each do |item|
  puts "#{item.name}, #{item.itemId}, #{item.salePrice}"

  # When the user hits ENTER instead of a SEARCH term or a product id, print out the same result as in Assignment 22.
  sub_total = invoice.total_item
  puts "Sub Total: $#{sub_total}"

end
