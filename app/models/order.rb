class Order < ApplicationRecord
    has_many :order_items
    before_save :set_subtotal
    validates_numericality_of :set_subtotal, :greater_than => 0, :less_than => 99
    



    def subtotal
        order_items.collect{|order_item| order_item.valid? ? order_item.unit_price*order_item.quantity : 0}.sum
    end



    private

    def set_subtotal
        self[:subtotal] = subtotal
    end
end
