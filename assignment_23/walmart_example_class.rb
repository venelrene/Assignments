#create an InvoiceItem object and add it to your Invoice object
#Add the category to the InvoiceItem
class InvoiceItem
  attr_accessor :name, :salePrice, :itemId, :availableOnline
end

class Invoice
  attr_accessor :items

  def total_item
    @items.reject {|item| item.quantity == 0}
    invoice_total = @items.sum {|item|  item.sale_price * item.quantity}

  end

  def total
    invoice_total = @items.sum {|item| item.sale_price * item.quantity * item.tax_percentage}
  end

  def initialize
    @items = []
  end

end
