require 'test_helper'

class TankAlarmThresholdsControllerTest < ActionController::TestCase
  setup do
    @tank_alarm_threshold = tank_alarm_thresholds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tank_alarm_thresholds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tank_alarm_threshold" do
    assert_difference('TankAlarmThreshold.count') do
      post :create, tank_alarm_threshold: { do_threshold: @tank_alarm_threshold.do_threshold, k10_threshold: @tank_alarm_threshold.k10_threshold, k1_threshold: @tank_alarm_threshold.k1_threshold, orp_threshold: @tank_alarm_threshold.orp_threshold, ph_threshold: @tank_alarm_threshold.ph_threshold, tank_id: @tank_alarm_threshold.tank_id, temp_threshold: @tank_alarm_threshold.temp_threshold }
    end

    assert_redirected_to tank_alarm_threshold_path(assigns(:tank_alarm_threshold))
  end

  test "should show tank_alarm_threshold" do
    get :show, id: @tank_alarm_threshold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tank_alarm_threshold
    assert_response :success
  end

  test "should update tank_alarm_threshold" do
    patch :update, id: @tank_alarm_threshold, tank_alarm_threshold: { do_threshold: @tank_alarm_threshold.do_threshold, k10_threshold: @tank_alarm_threshold.k10_threshold, k1_threshold: @tank_alarm_threshold.k1_threshold, orp_threshold: @tank_alarm_threshold.orp_threshold, ph_threshold: @tank_alarm_threshold.ph_threshold, tank_id: @tank_alarm_threshold.tank_id, temp_threshold: @tank_alarm_threshold.temp_threshold }
    assert_redirected_to tank_alarm_threshold_path(assigns(:tank_alarm_threshold))
  end

  test "should destroy tank_alarm_threshold" do
    assert_difference('TankAlarmThreshold.count', -1) do
      delete :destroy, id: @tank_alarm_threshold
    end

    assert_redirected_to tank_alarm_thresholds_path
  end
end
