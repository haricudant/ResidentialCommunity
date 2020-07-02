require 'test_helper'

class CurrentprovidersControllerTest < ActionDispatch::IntegrationTest
   include Devise::Test::IntegrationHelpers

  setup do
    @currentprovider = currentproviders(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get currentproviders_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_currentprovider_url
    assert_response :success
  end

  test "should create currentprovider" do
    sign_in users(:one)
    assert_difference('Currentprovider.count') do
      post currentproviders_url, params: { currentprovider: { cost: @currentprovider.cost, providername: @currentprovider.providername, pslvcharge: @currentprovider.pslvcharge, standingcharge: @currentprovider.standingcharge } }
    end

    assert_redirected_to currentprovider_url(Currentprovider.last)
  end

  test "should show currentprovider" do
    sign_in users(:one)
    get currentprovider_url(@currentprovider)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_currentprovider_url(@currentprovider)
    assert_response :success
  end

  test "should update currentprovider" do
    sign_in users(:one)
    patch currentprovider_url(@currentprovider), params: { currentprovider: { cost: @currentprovider.cost, providername: @currentprovider.providername, pslvcharge: @currentprovider.pslvcharge, standingcharge: @currentprovider.standingcharge } }
    assert_redirected_to currentprovider_url(@currentprovider)
  end

  test "should destroy currentprovider" do
    sign_in users(:one)
    assert_difference('Currentprovider.count', -1) do
      delete currentprovider_url(@currentprovider)
    end

    assert_redirected_to currentproviders_url
  end
end
