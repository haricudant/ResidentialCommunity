require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "must not save a when service name is blank" do
   service = Service.new(servicename: "")
   assert_equal(false, service.save, "Saved the appliance name even though the name is wrong!")
end
   test "must not save a when service name is having number" do
   service = Service.new(servicename: "12344")
   assert_equal(false, service.save, "Saved the appliance name even though the name is wrong!")
end
test "must not save a when service name is one character" do
   service = Service.new(servicename: "")
   assert_equal(false, service.save, "Saved the appliance name even though the name is wrong!")
end
   test "must not save a when service name is twenty character" do
   service = Service.new(servicename: "ajjhhhjjjjhhhhjjjhhhhhjjjjjjjjjjjjjjjfjfjfhfjhvjhvjvhvjvjhvhjvjvjvjvjvjjjjjjjjjjjjkkkkkkjkjkjkjkjkjkj")
   assert_equal(false, service.save, "Saved the appliance name even though the name is wrong!")
end
   
end
