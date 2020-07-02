class OrderItemObserver < ActiveRecord::Observer
 observe :order_item
 
  def after_update(order_item)
   puts "thalaivaaaaa"
   
    @value=order_item

    if(order_item.previous_changes.any?)
		  OrderItemNotifierMailer.mailer(@value).deliver
    end
 
  end
end