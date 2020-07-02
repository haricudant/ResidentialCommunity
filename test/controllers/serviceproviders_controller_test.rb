require 'test_helper'

class ServiceprovidersControllerTest < ActionDispatch::IntegrationTest
   include Devise::Test::IntegrationHelpers

  setup do
     @serviceprovider = serviceproviders(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get serviceproviders_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_serviceprovider_url
    assert_response :success
  end

  test "should create serviceprovider" do
    sign_in users(:one)
   assert_difference('Serviceprovider.count') do
      post serviceproviders_url, params: { serviceprovider: { mailid: @serviceprovider.mailid, providername: @serviceprovider.providername, providerservice: @serviceprovider.providerservice } }
    end
      assert_redirected_to serviceprovider_url(Serviceprovider.last)
  end

  test "should show serviceprovider" do
    sign_in users(:one)
    get serviceprovider_url(@serviceprovider)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_serviceprovider_url(@serviceprovider)
    assert_response :success
  end

  test "should update serviceprovider" do
    sign_in users(:one)
    patch serviceprovider_url(@serviceprovider), params: { serviceprovider: { mailid: @serviceprovider.mailid, providername: @serviceprovider.providername, providerservice: @serviceprovider.providerservice } }
    assert_redirected_to serviceprovider_url(@serviceprovider)
  end

  test "should destroy serviceprovider" do
    sign_in users(:one)
    assert_difference('Serviceprovider.count', -1) do
      delete serviceprovider_url(@serviceprovider)
    end

    assert_redirected_to serviceproviders_url
  end
end
