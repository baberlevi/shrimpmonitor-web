require 'test_helper'

class DoSensorReadingsControllerTest < ActionController::TestCase
  setup do
    @do_sensor_reading = do_sensor_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:do_sensor_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create do_sensor_reading" do
    assert_difference('DoSensorReading.count') do
      post :create, do_sensor_reading: { do_percent_reading: @do_sensor_reading.do_percent_reading, do_reading_value: @do_sensor_reading.do_reading_value, reading_timestamp: @do_sensor_reading.reading_timestamp, tank_id: @do_sensor_reading.tank_id }
    end

    assert_redirected_to do_sensor_reading_path(assigns(:do_sensor_reading))
  end

  test "should show do_sensor_reading" do
    get :show, id: @do_sensor_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @do_sensor_reading
    assert_response :success
  end

  test "should update do_sensor_reading" do
    patch :update, id: @do_sensor_reading, do_sensor_reading: { do_percent_reading: @do_sensor_reading.do_percent_reading, do_reading_value: @do_sensor_reading.do_reading_value, reading_timestamp: @do_sensor_reading.reading_timestamp, tank_id: @do_sensor_reading.tank_id }
    assert_redirected_to do_sensor_reading_path(assigns(:do_sensor_reading))
  end

  test "should destroy do_sensor_reading" do
    assert_difference('DoSensorReading.count', -1) do
      delete :destroy, id: @do_sensor_reading
    end

    assert_redirected_to do_sensor_readings_path
  end
end
