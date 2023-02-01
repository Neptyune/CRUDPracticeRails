require "test_helper"

class DogdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dogdate = dogdates(:one)
  end

  test "should get index" do
    get dogdates_url
    assert_response :success
  end

  test "should get new" do
    get new_dogdate_url
    assert_response :success
  end

  test "should create dogdate" do
    assert_difference("Dogdate.count") do
      post dogdates_url, params: { dogdate: { account_id: @dogdate.account_id, date: @dogdate.date, dogs_id: @dogdate.dogs_id, location: @dogdate.location } }
    end

    assert_redirected_to dogdate_url(Dogdate.last)
  end

  test "should show dogdate" do
    get dogdate_url(@dogdate)
    assert_response :success
  end

  test "should get edit" do
    get edit_dogdate_url(@dogdate)
    assert_response :success
  end

  test "should update dogdate" do
    patch dogdate_url(@dogdate), params: { dogdate: { account_id: @dogdate.account_id, date: @dogdate.date, dogs_id: @dogdate.dogs_id, location: @dogdate.location } }
    assert_redirected_to dogdate_url(@dogdate)
  end

  test "should destroy dogdate" do
    assert_difference("Dogdate.count", -1) do
      delete dogdate_url(@dogdate)
    end

    assert_redirected_to dogdates_url
  end
end
