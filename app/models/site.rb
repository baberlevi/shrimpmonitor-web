class Site < ActiveRecord::Base
  belongs_to :company
  has_many :tanks
  has_many :do_sensor_readings, through: :tanks
  has_many :temp_sensor_readings, through: :tanks
  has_many :ph_sensor_readings, through: :tanks
  has_many :k1_sensor_readings, through: :tanks
  has_many :k10_sensor_readings, through: :tanks
  has_many :orp_sensor_readings, through: :tanks
end
