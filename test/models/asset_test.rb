require 'test_helper'

class AssetTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
     test "must not save a asset name is blank" do
   asset = Asset.new()
   assert_equal(false, asset.save, "saved the assetname eventhough the name is nto provide!")
end

  test "must not save a asset name format not correct" do
   asset = Asset.new(assetname: "Man123oj")
   assert_equal(false, asset.save, "Saved the appliance name even though the name is wrong!")
end

 test "must not save a asset when any one of the attribute is missing" do
   asset = Asset.new(assetname: "Man123oj")
   assert_equal(false, asset.save, "Saved the appliance name even though the name is wrong!")
end

end
