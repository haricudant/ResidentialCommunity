require 'test_helper'

class AppliancesControllerTest < ActionDispatch::IntegrationTest
       include Devise::Test::IntegrationHelpers

  setup do
    @appliance = appliances(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get appliances_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_appliance_url
    assert_response :success
  end

  test "should create appliance" do
    sign_in users(:one)
    assert_difference('Appliance.count') do
      post appliances_url, params: { appliance: { Appliance_name: @appliance.Appliance_name, Appliance_watt: @appliance.Appliance_watt } }
    end

    assert_redirected_to appliance_url(Appliance.last)
  end

  test "should show appliance" do
    sign_in users(:one)
    get appliance_url(@appliance)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_appliance_url(@appliance)
    assert_response :success
  end

  test "should update appliance" do
    sign_in users(:one)
    patch appliance_url(@appliance), params: { appliance: { Appliance_name: @appliance.Appliance_name, Appliance_watt: @appliance.Appliance_watt } }
    assert_redirected_to appliance_url(@appliance)
  end

  test "should destroy appliance" do
    sign_in users(:one)
    assert_difference('Appliance.count', -1) do
      delete appliance_url(@appliance)
    end

    assert_redirected_to appliances_url
  end
end
