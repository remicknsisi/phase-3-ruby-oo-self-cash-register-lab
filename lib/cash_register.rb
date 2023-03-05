class CashRegister
    attr_accessor :discount, :total, :items

    def initialize discount = 0
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item title, price, quantity = 1
        quantity.times do
            @items << title
        end
        @last_transaction = price * quantity
        self.total = self.total + price * quantity
    end

    def apply_discount
        if discount != 0
            self.total = self.total - (self.total * discount/100)
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - @last_transaction
    end

end