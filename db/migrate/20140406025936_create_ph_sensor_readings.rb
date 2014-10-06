class CreatePhSensorReadings < ActiveRecord::Migration
  def change
    create_table :ph_sensor_readings do |t|
      t.timestamp :reading_timestamp
      t.float :ph_reading_value
      t.integer :sensor_id
      t.integer :tank_id

      t.timestamps
    end
  end
end
