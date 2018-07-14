class CreateRepairOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :repair_order_items do |t|
      t.references :repair_order, foreign_key: true
      t.references :device_component, foreign_key: true
      t.references :technician, foreign_key: true
      t.date :warranty_expire_date
      t.string :warranty_coverage_notes
      t.bit :repaired_as_warranty
      t.date :warranty_repair_date

      t.timestamps
    end
  end
end
