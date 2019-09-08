require "application_system_test_case"

class GeographiesTest < ApplicationSystemTestCase
  setup do
    @geography = geographies(:one)
  end

  test "visiting the index" do
    visit geographies_url
    assert_selector "h1", text: "Geographies"
  end

  test "creating a Geography" do
    visit geographies_url
    click_on "New Geography"

    fill_in "Latitude", with: @geography.latitude
    fill_in "Longitude", with: @geography.longitude
    click_on "Create Geography"

    assert_text "Geography was successfully created"
    click_on "Back"
  end

  test "updating a Geography" do
    visit geographies_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @geography.latitude
    fill_in "Longitude", with: @geography.longitude
    click_on "Update Geography"

    assert_text "Geography was successfully updated"
    click_on "Back"
  end

  test "destroying a Geography" do
    visit geographies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Geography was successfully destroyed"
  end
end
