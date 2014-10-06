class Tank < ActiveRecord::Base
  belongs_to :site
  has_many :tank_alarm_thresholds
  has_many :tank_warning_tresholds
  has_many :do_sensor_readings
  has_many :temp_sensor_readings
  has_many :k1_sensor_readings
  has_many :k10_sensor_readings
  has_many :orp_sensor_readings
  has_many :ph_sensor_readings
end
