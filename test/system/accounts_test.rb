require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "should create account" do
    visit accounts_url
    click_on "New account"

    fill_in "Email", with: @account.email
    fill_in "Firstname", with: @account.firstname
    fill_in "Lastname", with: @account.lastname
    fill_in "Location", with: @account.location
    fill_in "Password", with: @account.password
    fill_in "Phone", with: @account.phone
    fill_in "Username", with: @account.username
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "should update Account" do
    visit account_url(@account)
    click_on "Edit this account", match: :first

    fill_in "Email", with: @account.email
    fill_in "Firstname", with: @account.firstname
    fill_in "Lastname", with: @account.lastname
    fill_in "Location", with: @account.location
    fill_in "Password", with: @account.password
    fill_in "Phone", with: @account.phone
    fill_in "Username", with: @account.username
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "should destroy Account" do
    visit account_url(@account)
    click_on "Destroy this account", match: :first

    assert_text "Account was successfully destroyed"
  end
end
