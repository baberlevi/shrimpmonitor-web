require 'test_helper'

class OrpSensorReadingsControllerTest < ActionController::TestCase
  setup do
    @orp_sensor_reading = orp_sensor_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orp_sensor_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orp_sensor_reading" do
    assert_difference('OrpSensorReading.count') do
      post :create, orp_sensor_reading: { orp_reading_value: @orp_sensor_reading.orp_reading_value, reading_timestamp: @orp_sensor_reading.reading_timestamp, tank_id: @orp_sensor_reading.tank_id }
    end

    assert_redirected_to orp_sensor_reading_path(assigns(:orp_sensor_reading))
  end

  test "should show orp_sensor_reading" do
    get :show, id: @orp_sensor_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orp_sensor_reading
    assert_response :success
  end

  test "should update orp_sensor_reading" do
    patch :update, id: @orp_sensor_reading, orp_sensor_reading: { orp_reading_value: @orp_sensor_reading.orp_reading_value, reading_timestamp: @orp_sensor_reading.reading_timestamp, tank_id: @orp_sensor_reading.tank_id }
    assert_redirected_to orp_sensor_reading_path(assigns(:orp_sensor_reading))
  end

  test "should destroy orp_sensor_reading" do
    assert_difference('OrpSensorReading.count', -1) do
      delete :destroy, id: @orp_sensor_reading
    end

    assert_redirected_to orp_sensor_readings_path
  end
end
