require 'test_helper'

class PhSensorReadingsControllerTest < ActionController::TestCase
  setup do
    @ph_sensor_reading = ph_sensor_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ph_sensor_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ph_sensor_reading" do
    assert_difference('PhSensorReading.count') do
      post :create, ph_sensor_reading: { ph_reading_value: @ph_sensor_reading.ph_reading_value, reading_timestamp: @ph_sensor_reading.reading_timestamp, sensor_id: @ph_sensor_reading.sensor_id, tank_id: @ph_sensor_reading.tank_id }
    end

    assert_redirected_to ph_sensor_reading_path(assigns(:ph_sensor_reading))
  end

  test "should show ph_sensor_reading" do
    get :show, id: @ph_sensor_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ph_sensor_reading
    assert_response :success
  end

  test "should update ph_sensor_reading" do
    patch :update, id: @ph_sensor_reading, ph_sensor_reading: { ph_reading_value: @ph_sensor_reading.ph_reading_value, reading_timestamp: @ph_sensor_reading.reading_timestamp, sensor_id: @ph_sensor_reading.sensor_id, tank_id: @ph_sensor_reading.tank_id }
    assert_redirected_to ph_sensor_reading_path(assigns(:ph_sensor_reading))
  end

  test "should destroy ph_sensor_reading" do
    assert_difference('PhSensorReading.count', -1) do
      delete :destroy, id: @ph_sensor_reading
    end

    assert_redirected_to ph_sensor_readings_path
  end
end
