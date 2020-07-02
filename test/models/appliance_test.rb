require 'test_helper'

class ApplianceTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "must not save a appliance when name and watt
are not provided" do
   appliance = Appliance.new(Appliance_watt: "Manoj")
   assert_equal(false, appliance.save, "saved the customer even
though at least one of the forename,
surname and/or email were not provided!")
end

  test "must not save a appliance when watt 
is not provided" do
   appliance = Appliance.new(Appliance_name: "Manoj")
   assert_equal(false, appliance.save, "saved the customer even
though at least one of the forename,
surname and/or email were not provided!")
end


  test "must not save a appliance when name format not correct" do
   appliance = Appliance.new(Appliance_name: "Man123oj")
   assert_equal(false, appliance.save, "Saved the appliance name even though the name is wrong!")
end


end
