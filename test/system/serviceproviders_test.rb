require "application_system_test_case"

class ServiceprovidersTest < ApplicationSystemTestCase
  setup do
    @serviceprovider = serviceproviders(:one)
  end

  test "visiting the index" do
    visit serviceproviders_url
    assert_selector "h1", text: "Serviceproviders"
  end

  test "creating a Serviceprovider" do
    visit serviceproviders_url
    click_on "New Serviceprovider"

    fill_in "Mailid", with: @serviceprovider.mailid
    fill_in "Providername", with: @serviceprovider.providername
    fill_in "Providerservice", with: @serviceprovider.providerservice
    click_on "Create Serviceprovider"

    assert_text "Serviceprovider was successfully created"
    click_on "Back"
  end

  test "updating a Serviceprovider" do
    visit serviceproviders_url
    click_on "Edit", match: :first

    fill_in "Mailid", with: @serviceprovider.mailid
    fill_in "Providername", with: @serviceprovider.providername
    fill_in "Providerservice", with: @serviceprovider.providerservice
    click_on "Update Serviceprovider"

    assert_text "Serviceprovider was successfully updated"
    click_on "Back"
  end

  test "destroying a Serviceprovider" do
    visit serviceproviders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Serviceprovider was successfully destroyed"
  end
end
