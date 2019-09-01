class CashRegister

  attr_accessor :total, :discount, :apply_discount

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end 
  
  def add_item(total, price, quantity = 1)
    @total += (price*quantity) 
  end 
  
  def apply_discount()
  end 
  
end 