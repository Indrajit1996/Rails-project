require 'test_helper'

class GeographiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geography = geographies(:one)
  end

  test "should get index" do
    get geographies_url
    assert_response :success
  end

  test "should get new" do
    get new_geography_url
    assert_response :success
  end

  test "should create geography" do
    assert_difference('Geography.count') do
      post geographies_url, params: { geography: { latitude: @geography.latitude, longitude: @geography.longitude } }
    end

    assert_redirected_to geography_url(Geography.last)
  end

  test "should show geography" do
    get geography_url(@geography)
    assert_response :success
  end

  test "should get edit" do
    get edit_geography_url(@geography)
    assert_response :success
  end

  test "should update geography" do
    patch geography_url(@geography), params: { geography: { latitude: @geography.latitude, longitude: @geography.longitude } }
    assert_redirected_to geography_url(@geography)
  end

  test "should destroy geography" do
    assert_difference('Geography.count', -1) do
      delete geography_url(@geography)
    end

    assert_redirected_to geographies_url
  end
end
