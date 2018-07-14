class CreateDeviceComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :device_components do |t|
      t.references :device_version, foreign_key: true
      t.string :device_comp_name
      t.string :device_comp_color
      t.string :device_comp_description
      t.references :device_component_status, foreign_key: true
      t.decimal :device_comp_cost, precision: 18, scale: 2

      t.timestamps
    end
  end
end
