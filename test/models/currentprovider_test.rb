require 'test_helper'

class CurrentproviderTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "must not save a providername name format not correct" do
   currentprovider = Currentprovider.new(providername: "Man123oj")
   assert_equal(false, currentprovider.save, "Saved the provider name even though the name is wrong!")
end
test "must not save a currentprovider when any one of the attribute is missing" do
   currentprovider = Currentprovider.new(providername: "Manoj")
   assert_equal(false, currentprovider.save, "Saved the appliance name even though the name is wrong!")
end

test "must not save a cost when any one of the cost format is wrong" do
   currentprovider = Currentprovider.new(cost: 10000)
   assert_equal(false, currentprovider.save, "Saved the appliance name even though the name is wrong!")
end

end
