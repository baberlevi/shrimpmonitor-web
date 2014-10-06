json.array!(@k1_sensor_readings) do |k1_sensor_reading|
  json.extract! k1_sensor_reading, :id, :reading_timestamp, :ec_reading_value, :tds_reading_value, :sal_reading_value, :tank_id
  json.url k1_sensor_reading_url(k1_sensor_reading, format: :json)
end
