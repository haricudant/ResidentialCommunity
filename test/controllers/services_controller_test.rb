require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
   include Devise::Test::IntegrationHelpers

  setup do
    @service = services(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get services_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    sign_in users(:one)
    assert_difference('Service.count') do
      post services_url, params: { service: { servicename: @service.servicename } }
    end
    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    sign_in users(:one)
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    sign_in users(:one)
    patch service_url(@service), params: { service: { servicename: @service.servicename } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    sign_in users(:one)
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
