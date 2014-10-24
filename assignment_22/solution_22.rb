require 'active_support/all'
# Assignment 22
# Create an InvoiceItem class and an Invoice class.
# The class should have the following attributes: product_name, sale_price, quantity, tax percentage

load 'invoice_class.rb'

  invoice = Invoice.new

loop do
  # Ask the user to enter in the attributes for each invoice item, hitting ENTER on product name when done
  print "Please fillout the following (press ENTER to Exit)\n"

  invoice_item = InvoiceItem.new

  print "Product Name:\n"
  invoice_item.product_name = gets.chomp
  break if invoice_item.product_name.length == 0

  print "Quantity:\n"
  invoice_item.quantity = gets.chomp.to_i
  break if invoice_item.quantity == 0

  print "Sale price:\n"
  invoice_item.sale_price = gets.chomp.to_i.round(2)

  invoice.items << invoice_item

end
#Then output each line item.
 invoice.items.each do |invoice_item|
puts "Product requested: #{invoice_item.product_name}\n Price:#{invoice_item.sale_price}\n Quantity:#{invoice_item.quantity}\n"
end

#Show a sub-total without the tax, then a line item for the tax, then the total.
sub_total = invoice.total_item
puts "Sub Total:#{sub_total}"

print "#{invoice.tax}= 7% tax added to items\n"
# tax = invoice.tax

total = invoice.total + sub_total
puts "Final total with tax is: #{total}"
