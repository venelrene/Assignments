=begin
# Assignment 23
* Take what we did in class with the Walmart API, and expand it to include the following functionality:
* When the user searches for a product, allow the user to enter the product id (from the search results). For the product indicated, create an InvoiceItem object and add it to your Invoice object
* Add the category to the InvoiceItem
* After the user adds a product to the invoice (using your InvoiceItem class), loop and allow them to search again
* When the user hits ENTER instead of a SEARCH term or a product id, print out the same result as in Assignment 22.
=end
require 'net/http'
require 'json'
require 'active_support/all'
#create an InvoiceItem object and add it to your Invoice object
#Add the category to the InvoiceItem
  class InvoiceItem
    attr_accessor :name, :salePrice, :itemId, :availableOnline
  end

  class Ivoice
    attr_accessor :items

      def total_item
        @items.reject {|item| item.quantity == 0}
        invoice_total = @items.sum {|item|  item.sale_price * item.quantity}

      end

      def total
        invoice_total = @items.sum {|item| item.sale_price * item.quantity * item.tax_percentage}
      end

  end


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

      puts "Narrow search by product ID"
      product_id = $stdin.gets.strip.to_i





end
