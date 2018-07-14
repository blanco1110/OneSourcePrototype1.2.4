class RepairOrderItem < ApplicationRecord
  belongs_to :repair_order
  belongs_to :device_component
  belongs_to :technician
end
