class CashRegister

  attr_accessor :total, :discount, :apply_discount

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end 
  
  def add_item(total, price, quantity = 1)
    @total += (price*quantity) 
  end 
  
  def apply_discount
    
    if self.discount == 0
      "There is no discount to apply."
      
    else 
      @total = total * (1-(self.discount/100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end 
  end 
  

end 