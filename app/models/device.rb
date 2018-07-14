class Device < ApplicationRecord
  belongs_to :customer
  belongs_to :device_version
  has_many :device_repair_orders
  has_many :repair_orders, through: :device_repair_orders
end
