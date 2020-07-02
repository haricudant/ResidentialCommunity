require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
  test "must not save a firstname format not correct" do
   profile = Profile.new(:firstname => 'Manoj123')
   assert_equal(false, profile.save, "Saved the appliance name even though the firstname format is wrong!")
end
test "must not save a lastname format not correct" do
   profile = Profile.new(:lastname => 'Manoj123')
   assert_equal(false, profile.save, "Saved the appliance name even though the second name format is wrong!")
end
test "must not save a spousename format not correct" do
   profile = Profile.new(:spouse_name => 'Manoj123')
   assert_equal(false, profile.save, "Saved the appliance name even though the souse name is wrong!")
end
end
