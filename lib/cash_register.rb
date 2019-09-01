class CashRegister

  attr_accessor :total, :discount, :apply_discount, :cart 

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @cart = []
  end 
  
  def add_item(tittle, price, quantity = 1)
    quantity.times do 
      @cart << tittle 
    end 
    @total += (price*quantity) 
  end 
  
  def apply_discount
    
    if self.discount == 0
      "There is no discount to apply."
    else 
      @total = self.total * (1-(self.discount/100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end 
  end 
  
  def items 
    @cart 
  end 
  
  def void_last_transaction
    self.total -= self.last 
  end 

end 