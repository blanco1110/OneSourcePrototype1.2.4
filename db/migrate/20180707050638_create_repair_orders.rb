class CreateRepairOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :repair_orders do |t|
      t.date :repair_order_date
      t.decimal :repair_order_subtotal, precision: 18, scale: 2
      t.decimal :repair_order_tax, precision: 18, scale: 2
      t.decimal :repair_order_total, precision: 18, scale: 2
      t.string :repair_order_accessories
      t.string :repair_order_notes
      t.references :repair_order_status, foreign_key: true
      t.date :repair_order_status_date

      t.timestamps
    end
  end
end
