require 'test_helper'

class TempSensorReadingsControllerTest < ActionController::TestCase
  setup do
    @temp_sensor_reading = temp_sensor_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temp_sensor_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temp_sensor_reading" do
    assert_difference('TempSensorReading.count') do
      post :create, temp_sensor_reading: { display_type: @temp_sensor_reading.display_type, reading_timestamp: @temp_sensor_reading.reading_timestamp, tank_id: @temp_sensor_reading.tank_id, temp_reading_value: @temp_sensor_reading.temp_reading_value }
    end

    assert_redirected_to temp_sensor_reading_path(assigns(:temp_sensor_reading))
  end

  test "should show temp_sensor_reading" do
    get :show, id: @temp_sensor_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temp_sensor_reading
    assert_response :success
  end

  test "should update temp_sensor_reading" do
    patch :update, id: @temp_sensor_reading, temp_sensor_reading: { display_type: @temp_sensor_reading.display_type, reading_timestamp: @temp_sensor_reading.reading_timestamp, tank_id: @temp_sensor_reading.tank_id, temp_reading_value: @temp_sensor_reading.temp_reading_value }
    assert_redirected_to temp_sensor_reading_path(assigns(:temp_sensor_reading))
  end

  test "should destroy temp_sensor_reading" do
    assert_difference('TempSensorReading.count', -1) do
      delete :destroy, id: @temp_sensor_reading
    end

    assert_redirected_to temp_sensor_readings_path
  end
end
