class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.integer :imei_number
      t.string :device_type
      t.string :device_color
      t.string :device_notes
      t.references :customer, foreign_key: true
      t.references :device_version, foreign_key: true

      t.timestamps
    end
  end
end
