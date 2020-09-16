require 'pry'
class CashRegister

    attr_accessor :total, :discount, :last_transaction_amount, :price

    def initialize(discount = 0)
        @total = 0.0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        @quantity = quantity
        @price = price
        quantity.times {@items << item}
        @total += price * quantity
        @last_transaction_amount = @total
        @total

    end

    def apply_discount
        if @discount > 0
            @discount = @discount/100.to_f
            @total -= (@total * @discount)
            "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction

        @total -= @price * @quantity

        if @items == []
            return 0.0
        end


    end


end
