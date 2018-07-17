class Customer < ApplicationRecord
  has_many :devices, dependent: :destroy
  has_many :device_versions, through: :devices
  accepts_nested_attributes_for :devices, allow_destroy: true
end
