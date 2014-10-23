require 'test_helper'

class StoreysControllerTest < ActionController::TestCase
  setup do
    @storey = storeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storey" do
    assert_difference('Storey.count') do
      post :create, storey: { name: @storey.name }
    end

    assert_redirected_to storey_path(assigns(:storey))
  end

  test "should show storey" do
    get :show, id: @storey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storey
    assert_response :success
  end

  test "should update storey" do
    patch :update, id: @storey, storey: { name: @storey.name }
    assert_redirected_to storey_path(assigns(:storey))
  end

  test "should destroy storey" do
    assert_difference('Storey.count', -1) do
      delete :destroy, id: @storey
    end

    assert_redirected_to storeys_path
  end
end
