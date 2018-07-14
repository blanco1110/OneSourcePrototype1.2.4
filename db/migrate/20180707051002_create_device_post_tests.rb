class CreateDevicePostTests < ActiveRecord::Migration[5.1]
  def change
    create_table :device_post_tests do |t|
      t.date :device_post_test_date
      t.references :repair_order, foreign_key: true
      t.references :test, foreign_key: true
      t.string :post_test_condition
      t.string :post_test_notes

      t.timestamps
    end
  end
end
