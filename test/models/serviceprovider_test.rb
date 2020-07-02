require 'test_helper'

class ServiceproviderTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   
   test "must not save a when service name is blank" do
   serviceprovider = Serviceprovider.new(providername: "12333")
   assert_equal(false, serviceprovider.save, "Saved the appliance name even though the name is wrong!")
end
 test "must not save a when mailid is not valid" do
   serviceprovider = Serviceprovider.new(mailid: "12333")
   assert_equal(false, serviceprovider.save, "Saved the appliance name even though the name is wrong!")
end
   
 
end
