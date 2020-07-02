require "application_system_test_case"

class RentsTest < ApplicationSystemTestCase
  setup do
    @rent = rents(:one)
  end

  test "visiting the index" do
    visit rents_url
    assert_selector "h1", text: "Rents"
  end

  test "creating a Rent" do
    visit rents_url
    click_on "New Rent"

    fill_in "Agent fee", with: @rent.agent_fee
    fill_in "Grossrent", with: @rent.grossrent
    fill_in "Income tac", with: @rent.income_tac
    fill_in "Insurance", with: @rent.insurance
    fill_in "Management charges", with: @rent.management_charges
    fill_in "Mortage interest", with: @rent.mortage_interest
    fill_in "Mortage interest allowed", with: @rent.mortage_interest_allowed
    fill_in "Net profit or loss", with: @rent.net_profit_or_loss
    fill_in "Other", with: @rent.other
    fill_in "Prsi", with: @rent.prsi
    fill_in "Rental profit or loss", with: @rent.rental_profit_or_loss
    fill_in "Repairs", with: @rent.repairs
    fill_in "Total", with: @rent.total
    fill_in "Total expenses", with: @rent.total_expenses
    fill_in "Usc", with: @rent.usc
    fill_in "Wear and tear", with: @rent.wear_and_tear
    click_on "Create Rent"

    assert_text "Rent was successfully created"
    click_on "Back"
  end

  test "updating a Rent" do
    visit rents_url
    click_on "Edit", match: :first

    fill_in "Agent fee", with: @rent.agent_fee
    fill_in "Grossrent", with: @rent.grossrent
    fill_in "Income tac", with: @rent.income_tac
    fill_in "Insurance", with: @rent.insurance
    fill_in "Management charges", with: @rent.management_charges
    fill_in "Mortage interest", with: @rent.mortage_interest
    fill_in "Mortage interest allowed", with: @rent.mortage_interest_allowed
    fill_in "Net profit or loss", with: @rent.net_profit_or_loss
    fill_in "Other", with: @rent.other
    fill_in "Prsi", with: @rent.prsi
    fill_in "Rental profit or loss", with: @rent.rental_profit_or_loss
    fill_in "Repairs", with: @rent.repairs
    fill_in "Total", with: @rent.total
    fill_in "Total expenses", with: @rent.total_expenses
    fill_in "Usc", with: @rent.usc
    fill_in "Wear and tear", with: @rent.wear_and_tear
    click_on "Update Rent"

    assert_text "Rent was successfully updated"
    click_on "Back"
  end

  test "destroying a Rent" do
    visit rents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rent was successfully destroyed"
  end
end
