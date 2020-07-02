require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
  end
  test "must not save when any of the field is not provided" do
   product = Product.new(price: 1000)
   assert_equal(false, product.save, "saved to complains table even one of the column is blank")
 end
end
