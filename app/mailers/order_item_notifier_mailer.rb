class OrderItemNotifierMailer  < ApplicationMailer
    puts "lnsdkfdsnkdsndsnfkdsnfdskbfdskbfdskjbfdskfbdfbdskfbdsj"
    def mailer(val)
        fun = val
        @item = fun.quantity
        @id = fun.product_id
        @orderid = fun.order_id
        @total = fun.total
        @price = fun.unit_price
        @time = fun.updated_at
        puts "the items are quantity fuck yu #{@item}"
        @to = 'manojitkannan@gmail.com'
        mail(to: @to,subject:  'Thanks for signing up for our amazing app' )
    end
end