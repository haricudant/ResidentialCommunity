require 'test_helper'
class AssetsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @asset = assets(:one)
  end

  test "should get index" do
     sign_in users(:one)
    get assets_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_asset_url
    assert_response :success
  end

  test "should create asset" do
     sign_in users(:one)
    assert_difference('Asset.count') do
      post assets_url, params: { asset: { assetname: @asset.assetname, assettype: @asset.assettype, user_id: @asset.user_id, workingcondition: @asset.workingcondition } }
    end
    assert_redirected_to asset_url(Asset.last)
  end

  test "should show asset" do
     sign_in users(:one)
     get asset_url(@asset)
    assert_response :success
  end

  test "should get edit" do
     sign_in users(:one)
    get edit_asset_url(@asset)
    assert_response :success
  end

  test "should update asset" do
     sign_in users(:one)
    patch asset_url(@asset), params: { asset: { assetname: @asset.assetname, assettype: @asset.assettype, user_id: @asset.user_id, workingcondition: @asset.workingcondition } }
    assert_redirected_to asset_url(@asset)
  end

  test "should destroy asset" do
    # sign_in users(:one)
   #  puts"ljvlnflnf#{Asset.count}"
    assert_difference('Asset.count', -1) do
      delete asset_url(@asset)
    end

    assert_redirected_to assets_url
  end
end
