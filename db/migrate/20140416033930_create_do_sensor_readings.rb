class CreateDoSensorReadings < ActiveRecord::Migration
  def change
    create_table :do_sensor_readings do |t|
      t.timestamp :reading_timestamp
      t.float :do_reading_value
      t.float :do_percent_reading
      t.integer :tank_id

      t.timestamps
    end
  end
end
