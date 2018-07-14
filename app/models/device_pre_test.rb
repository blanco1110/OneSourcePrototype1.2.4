class DevicePreTest < ApplicationRecord
  belongs_to :repair_order
  belongs_to :test
end
