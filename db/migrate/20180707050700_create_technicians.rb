class CreateTechnicians < ActiveRecord::Migration[5.1]
  def change
    create_table :technicians do |t|
      t.string :tech_name
      t.references :technician_status, foreign_key: true
      t.string :tech_expertise_notes

      t.timestamps
    end
  end
end
