class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :test_name
      t.string :test_description

      t.timestamps
    end
  end
end
