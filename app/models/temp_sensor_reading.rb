class TempSensorReading < ActiveRecord::Base
  belongs_to :tank
  has_one :site, through: :tank
  has_one :company, through: :site
  has_many :users, through: :company
end
