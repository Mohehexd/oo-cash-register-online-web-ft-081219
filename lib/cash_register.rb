class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end 
  
  def add_item(price, total = 0)
    @total += price 
  end 
  
  
end 