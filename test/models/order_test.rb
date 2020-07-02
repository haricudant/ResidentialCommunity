require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "must not save when any of the field is not provided" do
   order = Order.new(subtotal: 1000)
   assert_equal(false, order.save, "saved to complains table even one of the column is blank")
 end
 
 test "must  of the field is not provided" do
   order = Order.new(subtotal: -5)
   assert_equal(false, order.save, "saved to complains table even one of the column is blank")
 end
end
