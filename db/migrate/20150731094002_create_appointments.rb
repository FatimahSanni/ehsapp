class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :time_slot, index: true
      t.belongs_to :consultant, index: true
      t.text :remark

      t.timestamps null: false
    end
    add_foreign_key :appointments, :patients
    add_foreign_key :appointments, :time_slots
    add_foreign_key :appointments, :consultants
  end
end
