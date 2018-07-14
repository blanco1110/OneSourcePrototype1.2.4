class CreateDevicePreTests < ActiveRecord::Migration[5.1]
  def change
    create_table :device_pre_tests do |t|
      t.date :device_pre_test_date
      t.references :repair_order, foreign_key: true
      t.references :test, foreign_key: true
      t.string :pre_test_condition
      t.string :pre_test_notes

      t.timestamps
    end
  end
end
