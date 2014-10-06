json.array!(@ph_sensor_readings) do |ph_sensor_reading|
  json.extract! ph_sensor_reading, :id, :reading_timestamp, :ph_reading_value, :sensor_id, :tank_id
  json.url ph_sensor_reading_url(ph_sensor_reading, format: :json)
end
