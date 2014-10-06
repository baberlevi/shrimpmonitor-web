require 'test_helper'

class TanksControllerTest < ActionController::TestCase
  setup do
    @tank = tanks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tank" do
    assert_difference('Tank.count') do
      post :create, tank: { description: @tank.description, site_id: @tank.site_id, site_tank_label: @tank.site_tank_label }
    end

    assert_redirected_to tank_path(assigns(:tank))
  end

  test "should show tank" do
    get :show, id: @tank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tank
    assert_response :success
  end

  test "should update tank" do
    patch :update, id: @tank, tank: { description: @tank.description, site_id: @tank.site_id, site_tank_label: @tank.site_tank_label }
    assert_redirected_to tank_path(assigns(:tank))
  end

  test "should destroy tank" do
    assert_difference('Tank.count', -1) do
      delete :destroy, id: @tank
    end

    assert_redirected_to tanks_path
  end
end
