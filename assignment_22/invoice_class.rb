
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
    invoice_total = @items.sum {|item| item.sale_price * item.quantity * @tax }
  end

  def tax
    @tax = 0.07
  end

  def initialize
    @items = []
  end



end
