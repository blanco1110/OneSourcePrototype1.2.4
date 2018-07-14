class CreateRepairOrderStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :repair_order_statuses do |t|
      t.string :repair_order_status

      t.timestamps
    end
  end
end
