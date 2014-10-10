
# Assignment 22
# Create an InvoiceItem class and an Invoice class.
# The class should have the following attributes: product_name, sale_price, quantity, tax percentage
require 'active_support/all'

class InvoiceItem
  attr_accessor :product_name, :sale_price, :quantity




end

class Invoice
  attr_accessor :items, :tax_percentage
# Create a class method in Invoice that will calculate a total for an array of InvoiceItem objects
# Use reject or select methods in order to remove any InvoiceItem objects that have a zero quantity
# Use the sum method to get the total

   invoice_item = InvoiceItem.new
   object_count = invoice_item.count

  def total_item
    @items.reject {|item| item.quantity == 0}
    invoice_total = @items.sum {|item|  item.sale_price * item.quantity}

  end



end
# Ask the user to enter in the attributes for each invoice item, hitting ENTER on product name when done
new_invoice = Invoice.new
print "Please fillout the following (press ENTER when done)"
print "Quantity:\n"
entered_quantity = gets.chomp
print "Sale price:\n"
enetered_price = gets.chomp
print "Product Name:\n"
enetered_product = gets.chomp


#Use reject or select methods in order to remove any InvoiceItem objects that have a zero quantity
#Use the sum method to get the total
* Ask the user to enter in the attributes for each invoice item, hitting ENTER on product name when done
* Then output each line item.
* Show a sub-total without the tax, then a line item for the tax, then the total.
