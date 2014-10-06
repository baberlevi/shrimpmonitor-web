json.array!(@temp_sensor_readings) do |temp_sensor_reading|
  json.extract! temp_sensor_reading, :id, :reading_timestamp, :temp_reading_value, :display_type, :tank_id
  json.url temp_sensor_reading_url(temp_sensor_reading, format: :json)
end
