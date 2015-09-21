class CreateCounsellingRecords < ActiveRecord::Migration
  def change
    create_table :counselling_records do |t|
      t.belongs_to :counsellor, index: true
      t.belongs_to :patient, index: true
      t.belongs_to :consultant, index: true
      t.belongs_to :service, index: true
      t.text :note

      t.timestamps null: false
    end
    add_foreign_key :counselling_records, :counsellors
    add_foreign_key :counselling_records, :patients
    add_foreign_key :counselling_records, :consultants
    add_foreign_key :counselling_records, :services
  end
end
