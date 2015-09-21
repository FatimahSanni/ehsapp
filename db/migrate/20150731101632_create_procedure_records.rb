class CreateProcedureRecords < ActiveRecord::Migration
  def change
    create_table :procedure_records do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :consultant, index: true

      t.timestamps null: false
    end
    add_foreign_key :procedure_records, :patients
    add_foreign_key :procedure_records, :consultants
  end
end
