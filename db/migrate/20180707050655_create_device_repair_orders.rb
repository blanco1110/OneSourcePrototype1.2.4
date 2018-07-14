class CreateDeviceRepairOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :device_repair_orders do |t|
      t.references :device, foreign_key: true
      t.references :repair_order, foreign_key: true

      t.timestamps
    end
  end
end
