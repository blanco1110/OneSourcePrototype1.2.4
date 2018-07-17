class RepairOrder < ApplicationRecord
  belongs_to :repair_order_status
  has_many :device_repair_orders
end
