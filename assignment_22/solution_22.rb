
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

      def total_item
        @items.reject {|item| item.quantity == 0}
        invoice_total = @items.sum {|item|  item.sale_price * item.quantity}

      end

      def total
        invoice_total = @items.sum {|item| item.sale_price * item.quantity * item.tax_percentage}
      end
  end

loop do
# Ask the user to enter in the attributes for each invoice item, hitting ENTER on product name when done
  new_invoice = InvoiceItem.new
  print "Please fillout the following (press ENTER to Exit)\n"

  print "Product Name:\n"
  new_invoice.product_name = gets.chomp
  break if new_invoice.product_name.length == 0

  print "Quantity:\n"
  new_invoice.quantity = gets.chomp.to_i
  break if new_invoice.quantity == 0

  print "Sale price:\n"
  new_invoice.sale_price = gets.chomp.to_i.round(2)

end
#Then output each line item.
puts "Product requested:#{new_invoice.product_name}\n Price:#{new_invoice.sale_price}\n Quantity:#{new_invoice.quantity}\n"

#Show a sub-total without the tax, then a line item for the tax, then the total.
invoice = Invoice.new
sub_total = new_invoice.total_item
puts "Sub Total:#{sub_total}"

print "1% tax added to ALL items"
tax = tax_percentage.gets.chomp.to_i
total = sub_total + tax
