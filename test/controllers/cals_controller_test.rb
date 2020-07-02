require 'test_helper'

class CalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cal = cals(:one)
  end

  test "should get index" do
    get cals_url
    assert_response :success
  end

  test "should get new" do
    get new_cal_url
    assert_response :success
  end

  test "should create cal" do
    assert_difference('Cal.count') do
      post cals_url, params: { cal: { name: @cal.name, rent: @cal.rent } }
    end

    assert_redirected_to cal_url(Cal.last)
  end

  test "should show cal" do
    get cal_url(@cal)
    assert_response :success
  end

  test "should get edit" do
    get edit_cal_url(@cal)
    assert_response :success
  end

  test "should update cal" do
    patch cal_url(@cal), params: { cal: { name: @cal.name, rent: @cal.rent } }
    assert_redirected_to cal_url(@cal)
  end

  test "should destroy cal" do
    assert_difference('Cal.count', -1) do
      delete cal_url(@cal)
    end

    assert_redirected_to cals_url
  end
end
