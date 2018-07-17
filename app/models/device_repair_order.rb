class DeviceRepairOrder < ApplicationRecord
  belongs_to :device
  belongs_to :repair_order
  accepts_nested_attributes_for :repair_order, allow_destroy: true
end
