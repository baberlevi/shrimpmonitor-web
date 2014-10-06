json.array!(@orp_sensor_readings) do |orp_sensor_reading|
  json.extract! orp_sensor_reading, :id, :reading_timestamp, :orp_reading_value, :tank_id
  json.url orp_sensor_reading_url(orp_sensor_reading, format: :json)
end
