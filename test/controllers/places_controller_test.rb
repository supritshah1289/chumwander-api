require 'test_helper'

class PlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get places_url, as: :json
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post places_url, params: { place: { activity: @place.activity, description: @place.description, picture: @place.picture, title: @place.title } }, as: :json
    end

    assert_response 201
  end

  test "should show place" do
    get place_url(@place), as: :json
    assert_response :success
  end

  test "should update place" do
    patch place_url(@place), params: { place: { activity: @place.activity, description: @place.description, picture: @place.picture, title: @place.title } }, as: :json
    assert_response 200
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete place_url(@place), as: :json
    end

    assert_response 204
  end
end
