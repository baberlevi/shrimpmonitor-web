class CreateK1SensorReadings < ActiveRecord::Migration
  def change
    create_table :k1_sensor_readings do |t|
      t.timestamp :reading_timestamp
      t.float :ec_reading_value
      t.float :tds_reading_value
      t.integer :sal_reading_value
      t.integer :tank_id

      t.timestamps
    end
  end
end
