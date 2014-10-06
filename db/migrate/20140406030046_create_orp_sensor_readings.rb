class CreateOrpSensorReadings < ActiveRecord::Migration
  def change
    create_table :orp_sensor_readings do |t|
      t.timestamp :reading_timestamp
      t.float :orp_reading_value
      t.integer :tank_id

      t.timestamps
    end
  end
end
