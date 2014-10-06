require 'test_helper'

class TankWarningThresholdsControllerTest < ActionController::TestCase
  setup do
    @tank_warning_threshold = tank_warning_thresholds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tank_warning_thresholds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tank_warning_threshold" do
    assert_difference('TankWarningThreshold.count') do
      post :create, tank_warning_threshold: { do_threshold: @tank_warning_threshold.do_threshold, k10_threshold: @tank_warning_threshold.k10_threshold, k1_threshold: @tank_warning_threshold.k1_threshold, orp_threshold: @tank_warning_threshold.orp_threshold, ph_threshold: @tank_warning_threshold.ph_threshold, tank_id: @tank_warning_threshold.tank_id, temp_threshold: @tank_warning_threshold.temp_threshold }
    end

    assert_redirected_to tank_warning_threshold_path(assigns(:tank_warning_threshold))
  end

  test "should show tank_warning_threshold" do
    get :show, id: @tank_warning_threshold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tank_warning_threshold
    assert_response :success
  end

  test "should update tank_warning_threshold" do
    patch :update, id: @tank_warning_threshold, tank_warning_threshold: { do_threshold: @tank_warning_threshold.do_threshold, k10_threshold: @tank_warning_threshold.k10_threshold, k1_threshold: @tank_warning_threshold.k1_threshold, orp_threshold: @tank_warning_threshold.orp_threshold, ph_threshold: @tank_warning_threshold.ph_threshold, tank_id: @tank_warning_threshold.tank_id, temp_threshold: @tank_warning_threshold.temp_threshold }
    assert_redirected_to tank_warning_threshold_path(assigns(:tank_warning_threshold))
  end

  test "should destroy tank_warning_threshold" do
    assert_difference('TankWarningThreshold.count', -1) do
      delete :destroy, id: @tank_warning_threshold
    end

    assert_redirected_to tank_warning_thresholds_path
  end
end
