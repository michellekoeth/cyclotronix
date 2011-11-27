require 'test_helper'

class CycdataControllerTest < ActionController::TestCase
  setup do
    @cycdatum = cycdata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cycdata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cycdatum" do
    assert_difference('Cycdatum.count') do
      post :create, cycdatum: @cycdatum.attributes
    end

    assert_redirected_to cycdatum_path(assigns(:cycdatum))
  end

  test "should show cycdatum" do
    get :show, id: @cycdatum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cycdatum.to_param
    assert_response :success
  end

  test "should update cycdatum" do
    put :update, id: @cycdatum.to_param, cycdatum: @cycdatum.attributes
    assert_redirected_to cycdatum_path(assigns(:cycdatum))
  end

  test "should destroy cycdatum" do
    assert_difference('Cycdatum.count', -1) do
      delete :destroy, id: @cycdatum.to_param
    end

    assert_redirected_to cycdata_path
  end
end
