class CreateTempSensorReadings < ActiveRecord::Migration
  def change
    create_table :temp_sensor_readings do |t|
      t.timestamp :reading_timestamp
      t.float :temp_reading_value
      t.text :display_type
      t.integer :tank_id

      t.timestamps
    end
  end
end
