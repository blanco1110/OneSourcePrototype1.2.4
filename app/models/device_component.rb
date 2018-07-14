class DeviceComponent < ApplicationRecord
  belongs_to :device_version
  belongs_to :device_component_status
end
