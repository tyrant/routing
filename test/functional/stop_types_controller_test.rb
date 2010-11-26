require 'test_helper'

class StopTypesControllerTest < ActionController::TestCase
  setup do
    @stop_type = stop_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stop_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stop_type" do
    assert_difference('StopType.count') do
      post :create, :stop_type => @stop_type.attributes
    end

    assert_redirected_to stop_type_path(assigns(:stop_type))
  end

  test "should show stop_type" do
    get :show, :id => @stop_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @stop_type.to_param
    assert_response :success
  end

  test "should update stop_type" do
    put :update, :id => @stop_type.to_param, :stop_type => @stop_type.attributes
    assert_redirected_to stop_type_path(assigns(:stop_type))
  end

  test "should destroy stop_type" do
    assert_difference('StopType.count', -1) do
      delete :destroy, :id => @stop_type.to_param
    end

    assert_redirected_to stop_types_path
  end
end
