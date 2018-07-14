class CreateDeviceVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :device_versions do |t|
      t.string :device_version_name
      t.references :device_manufacturer, foreign_key: true

      t.timestamps
    end
  end
end
