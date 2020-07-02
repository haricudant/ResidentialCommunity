require "application_system_test_case"

class CurrentprovidersTest < ApplicationSystemTestCase
  setup do
    @currentprovider = currentproviders(:one)
  end

  test "visiting the index" do
    visit currentproviders_url
    assert_selector "h1", text: "Currentproviders"
  end

  test "creating a Currentprovider" do
    visit currentproviders_url
    click_on "New Currentprovider"

    fill_in "Cost", with: @currentprovider.cost
    fill_in "Providername", with: @currentprovider.providername
    fill_in "Pslvcharge", with: @currentprovider.pslvcharge
    fill_in "Standingcharge", with: @currentprovider.standingcharge
    click_on "Create Currentprovider"

    assert_text "Currentprovider was successfully created"
    click_on "Back"
  end

  test "updating a Currentprovider" do
    visit currentproviders_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @currentprovider.cost
    fill_in "Providername", with: @currentprovider.providername
    fill_in "Pslvcharge", with: @currentprovider.pslvcharge
    fill_in "Standingcharge", with: @currentprovider.standingcharge
    click_on "Update Currentprovider"

    assert_text "Currentprovider was successfully updated"
    click_on "Back"
  end

  test "destroying a Currentprovider" do
    visit currentproviders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Currentprovider was successfully destroyed"
  end
end
