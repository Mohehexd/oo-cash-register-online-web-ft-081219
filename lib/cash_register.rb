class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end 
  
  def add_item(total, price, quantity = 1)
    @total += (price*quantity) 
  end 
  
  
end 