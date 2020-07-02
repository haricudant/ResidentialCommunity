require 'test_helper'

class CalTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "must not save a cals when name and rent
are not provided" do
   cals = Cal.new(name: "Hari")
   assert_equal(false, cals.save, "saved the when name or rent is empty")
end
end
