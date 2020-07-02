require 'test_helper'

class EventTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "must not save when any of the field is not provided" do
   complain = Event.new(name: "dkfndskfndskfjdns")
   assert_equal(false, complain.save, "saved to complains table even one of the column is blank")
end
end
