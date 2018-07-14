class CreateDeviceManufacturers < ActiveRecord::Migration[5.1]
  def change
    create_table :device_manufacturers do |t|
      t.string :device_manu_name

      t.timestamps
    end
  end
end
