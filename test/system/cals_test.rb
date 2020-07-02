require "application_system_test_case"

class CalsTest < ApplicationSystemTestCase
  setup do
    @cal = cals(:one)
  end

  test "visiting the index" do
    visit cals_url
    assert_selector "h1", text: "Cals"
  end

  test "creating a Cal" do
    visit cals_url
    click_on "New Cal"

    fill_in "Name", with: @cal.name
    fill_in "Rent", with: @cal.rent
    click_on "Create Cal"

    assert_text "Cal was successfully created"
    click_on "Back"
  end

  test "updating a Cal" do
    visit cals_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cal.name
    fill_in "Rent", with: @cal.rent
    click_on "Update Cal"

    assert_text "Cal was successfully updated"
    click_on "Back"
  end

  test "destroying a Cal" do
    visit cals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cal was successfully destroyed"
  end
end
