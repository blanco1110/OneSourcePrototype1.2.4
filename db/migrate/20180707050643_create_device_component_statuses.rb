class CreateDeviceComponentStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :device_component_statuses do |t|
      t.string :device_comp_status

      t.timestamps
    end
  end
end
