json.array!(@do_sensor_readings) do |do_sensor_reading|
  json.extract! do_sensor_reading, :id, :reading_timestamp, :do_reading_value, :do_percent_reading, :tank_id
  json.url do_sensor_reading_url(do_sensor_reading, format: :json)
end
