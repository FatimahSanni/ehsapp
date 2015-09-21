class CreateSurgerySchedules < ActiveRecord::Migration
  def change
    create_table :surgery_schedules do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :consultant, index: true
      t.string :iol_power
      t.string :iol_type
      t.belongs_to :anaesthesia, index: true
      t.belongs_to :service, index: true
      t.string :eye
      t.text :remark

      t.timestamps null: false
    end
    add_foreign_key :surgery_schedules, :patients
    add_foreign_key :surgery_schedules, :consultants
    add_foreign_key :surgery_schedules, :anaesthesia
    add_foreign_key :surgery_schedules, :services
  end
end
