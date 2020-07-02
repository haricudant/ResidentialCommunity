
require 'test_helper'
class PollsControllerTest < ActionDispatch::IntegrationTest
  
#include Devise::Test::ControllerHelpers
 
 include Devise::Test::IntegrationHelpers
  setup do
    @poll = polls(:one)
  end

  test "should get index" do
   
    sign_in users(:one)
    get polls_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_poll_url
    assert_response :success
  end

  test "should create poll" do
    assert_difference('Poll.count') do
      post polls_url, params: { poll: { topic: @poll.topic } }
    end

    assert_redirected_to poll_url(Poll.last)
  end

  test "should show poll" do
     sign_in users(:one)
    get poll_url(@poll)
    assert_response :success
  end

  test "should get edit" do
     sign_in users(:one)
    get edit_poll_url(@poll)
    assert_response :success
  end

  test "should update poll" do
     sign_in users(:one)
    patch poll_url(@poll), params: { poll: { topic: @poll.topic } }
    assert_redirected_to poll_url(@poll)
  end

  test "should destroy poll" do
    assert_difference('Poll.count', -1) do
      delete poll_url(@poll)
    end

    assert_redirected_to polls_url
  end
end
