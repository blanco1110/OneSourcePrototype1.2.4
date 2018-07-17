class DeviceVersion < ApplicationRecord

  has_many :customers, through: :devices
  has_many :devices
end
