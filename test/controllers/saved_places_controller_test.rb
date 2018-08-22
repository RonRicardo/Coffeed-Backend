require 'test_helper'

class SavedPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_place = saved_places(:one)
  end

  test "should get index" do
    get saved_places_url, as: :json
    assert_response :success
  end

  test "should create saved_place" do
    assert_difference('SavedPlace.count') do
      post saved_places_url, params: { saved_place: { location: @saved_place.location, name: @saved_place.name, user_id: @saved_place.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show saved_place" do
    get saved_place_url(@saved_place), as: :json
    assert_response :success
  end

  test "should update saved_place" do
    patch saved_place_url(@saved_place), params: { saved_place: { location: @saved_place.location, name: @saved_place.name, user_id: @saved_place.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy saved_place" do
    assert_difference('SavedPlace.count', -1) do
      delete saved_place_url(@saved_place), as: :json
    end

    assert_response 204
  end
end
