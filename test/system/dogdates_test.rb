require "application_system_test_case"

class DogdatesTest < ApplicationSystemTestCase
  setup do
    @dogdate = dogdates(:one)
  end

  test "visiting the index" do
    visit dogdates_url
    assert_selector "h1", text: "Dogdates"
  end

  test "should create dogdate" do
    visit dogdates_url
    click_on "New dogdate"

    fill_in "Account", with: @dogdate.account_id
    fill_in "Date", with: @dogdate.date
    fill_in "Dogs", with: @dogdate.dogs_id
    fill_in "Location", with: @dogdate.location
    click_on "Create Dogdate"

    assert_text "Dogdate was successfully created"
    click_on "Back"
  end

  test "should update Dogdate" do
    visit dogdate_url(@dogdate)
    click_on "Edit this dogdate", match: :first

    fill_in "Account", with: @dogdate.account_id
    fill_in "Date", with: @dogdate.date
    fill_in "Dogs", with: @dogdate.dogs_id
    fill_in "Location", with: @dogdate.location
    click_on "Update Dogdate"

    assert_text "Dogdate was successfully updated"
    click_on "Back"
  end

  test "should destroy Dogdate" do
    visit dogdate_url(@dogdate)
    click_on "Destroy this dogdate", match: :first

    assert_text "Dogdate was successfully destroyed"
  end
end
