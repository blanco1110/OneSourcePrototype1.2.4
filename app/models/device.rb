class Device < ApplicationRecord
  belongs_to :customer
  belongs_to :device_version
  has_many :device_repair_orders
  accepts_nested_attributes_for :device_repair_orders, allow_destroy: true

end
