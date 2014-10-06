require 'test_helper'

class K1SensorReadingsControllerTest < ActionController::TestCase
  setup do
    @k1_sensor_reading = k1_sensor_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:k1_sensor_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create k1_sensor_reading" do
    assert_difference('K1SensorReading.count') do
      post :create, k1_sensor_reading: { ec_reading_value: @k1_sensor_reading.ec_reading_value, reading_timestamp: @k1_sensor_reading.reading_timestamp, sal_reading_value: @k1_sensor_reading.sal_reading_value, tank_id: @k1_sensor_reading.tank_id, tds_reading_value: @k1_sensor_reading.tds_reading_value }
    end

    assert_redirected_to k1_sensor_reading_path(assigns(:k1_sensor_reading))
  end

  test "should show k1_sensor_reading" do
    get :show, id: @k1_sensor_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @k1_sensor_reading
    assert_response :success
  end

  test "should update k1_sensor_reading" do
    patch :update, id: @k1_sensor_reading, k1_sensor_reading: { ec_reading_value: @k1_sensor_reading.ec_reading_value, reading_timestamp: @k1_sensor_reading.reading_timestamp, sal_reading_value: @k1_sensor_reading.sal_reading_value, tank_id: @k1_sensor_reading.tank_id, tds_reading_value: @k1_sensor_reading.tds_reading_value }
    assert_redirected_to k1_sensor_reading_path(assigns(:k1_sensor_reading))
  end

  test "should destroy k1_sensor_reading" do
    assert_difference('K1SensorReading.count', -1) do
      delete :destroy, id: @k1_sensor_reading
    end

    assert_redirected_to k1_sensor_readings_path
  end
end
