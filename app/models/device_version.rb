class DeviceVersion < ApplicationRecord
  belongs_to :device_manufacturer
  has_many :devices
  has_many :device_components
end
