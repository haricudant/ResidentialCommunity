require 'test_helper'

class RentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent = rents(:one)
  end

  test "should get index" do
    get rents_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_url
    assert_response :success
  end

  test "should create rent" do
    assert_difference('Rent.count') do
      post rents_url, params: { rent: { agent_fee: @rent.agent_fee, grossrent: @rent.grossrent, income_tac: @rent.income_tac, insurance: @rent.insurance, management_charges: @rent.management_charges, mortage_interest: @rent.mortage_interest, mortage_interest_allowed: @rent.mortage_interest_allowed, net_profit_or_loss: @rent.net_profit_or_loss, other: @rent.other, prsi: @rent.prsi, rental_profit_or_loss: @rent.rental_profit_or_loss, repairs: @rent.repairs, total: @rent.total, total_expenses: @rent.total_expenses, usc: @rent.usc, wear_and_tear: @rent.wear_and_tear } }
    end

    assert_redirected_to rent_url(Rent.last)
  end

  test "should show rent" do
    get rent_url(@rent)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_url(@rent)
    assert_response :success
  end

  test "should update rent" do
    patch rent_url(@rent), params: { rent: { agent_fee: @rent.agent_fee, grossrent: @rent.grossrent, income_tac: @rent.income_tac, insurance: @rent.insurance, management_charges: @rent.management_charges, mortage_interest: @rent.mortage_interest, mortage_interest_allowed: @rent.mortage_interest_allowed, net_profit_or_loss: @rent.net_profit_or_loss, other: @rent.other, prsi: @rent.prsi, rental_profit_or_loss: @rent.rental_profit_or_loss, repairs: @rent.repairs, total: @rent.total, total_expenses: @rent.total_expenses, usc: @rent.usc, wear_and_tear: @rent.wear_and_tear } }
    assert_redirected_to rent_url(@rent)
  end

  test "should destroy rent" do
    assert_difference('Rent.count', -1) do
      delete rent_url(@rent)
    end

    assert_redirected_to rents_url
  end
end
