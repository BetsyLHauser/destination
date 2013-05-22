require 'test_helper'

class FiltersControllerTest < ActionController::TestCase
  setup do
    @filter = filters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filter" do
    assert_difference('Filter.count') do
      post :create, filter: { airport_id: @filter.airport_id, code: @filter.code, outdoor_adventurer: @filter.outdoor_adventurer, public_transport: @filter.public_transport, urban: @filter.urban, walkable: @filter.walkable }
    end

    assert_redirected_to filter_path(assigns(:filter))
  end

  test "should show filter" do
    get :show, id: @filter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filter
    assert_response :success
  end

  test "should update filter" do
    put :update, id: @filter, filter: { airport_id: @filter.airport_id, code: @filter.code, outdoor_adventurer: @filter.outdoor_adventurer, public_transport: @filter.public_transport, urban: @filter.urban, walkable: @filter.walkable }
    assert_redirected_to filter_path(assigns(:filter))
  end

  test "should destroy filter" do
    assert_difference('Filter.count', -1) do
      delete :destroy, id: @filter
    end

    assert_redirected_to filters_path
  end
end
