module Rentalprofitorloss
class Rentalmaster
    def self.expense(gross_rent, mortage_int,repairs,insurance,mang_charges,agent_fees, other,wear_tear)
        gross_rent = gross_rent
        mortage_int = mortage_int
        mi = mortage_int * 0.85
        puts "#{mi}"
        repairs = repairs
        insurance = insurance
        mang_charges = mang_charges
        agent_fees = agent_fees
        other = other
        wear_tear = wear_tear
        total_expenses= (mi + repairs + insurance + mang_charges + agent_fees + other)
        rental_profit_or_loss = gross_rent - total_expenses
        net_profit_or_loss = rental_profit_or_loss - wear_tear
        income_tax = net_profit_or_loss  * 0.40
        prsi = net_profit_or_loss * 0.04
        usc = net_profit_or_loss * 0.08
        total_value_remaining = net_profit_or_loss  * 0.52
     return total_expenses,mi, rental_profit_or_loss, net_profit_or_loss, income_tax,prsi,usc,total_value_remaining
        
        
       
       
    end
    
end     

end


