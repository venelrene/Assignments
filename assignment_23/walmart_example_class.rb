#create an InvoiceItem object and add it to your Invoice object
#Add the category to the InvoiceItem
require 'active_support/all'


class InvoiceItem
  attr_accessor :name, :salePrice, :itemId, :availableOnline, :quantity
end

class Invoice
  attr_accessor :items

  def total_item
    @items.reject {|item| item.quantity == 0}
    invoice_total = @items.sum {|item|  item.salePrice * item.quantity}

  end

  def initialize
    @items = []
  end

end
