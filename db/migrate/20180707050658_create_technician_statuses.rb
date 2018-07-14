class CreateTechnicianStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :technician_statuses do |t|
      t.string :tech_status

      t.timestamps
    end
  end
end
