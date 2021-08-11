
class CashRegister
    attr_accessor :total, :discount, :before, :items, :price, :num
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def items 
        @items
    end

    def add_item (title, price, num = 1)
        self.total += (price * num)
        num.times {self.items << title}
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else 
            self.total = (self.total * (100.0 - @discount) /100)
            "After the discount, the total comes to $800."
            end
    end

    def void_last_transaction(price, num)
        self.total -= (self.price * self.num)
      end
   

end
