require 'test_helper'

class RentTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "must not save when any of the field is not provided" do
   rent = Rent.new(mortage_interest: '800',repairs: '10',wear_and_tear: '5')
   assert_equal(false, rent.save, "saved to rents table even one of the column is blank")
   end
   test "must not save when when gross rent is more than 100" do
   rent = Rent.new(grossrent: 101)
   assert_equal(false, rent.save, "saved to rents table even one of the column is blank")
   end
   
end
