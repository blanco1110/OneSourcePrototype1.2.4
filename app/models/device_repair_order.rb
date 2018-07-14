class DeviceRepairOrder < ApplicationRecord
  belongs_to :device
  belongs_to :repair_order
end
