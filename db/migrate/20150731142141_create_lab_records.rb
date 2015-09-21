class CreateLabRecords < ActiveRecord::Migration
  def change
    create_table :lab_records do |t|
      t.belongs_to :patient, index: true
      t.string :provisional_diagnosis
      t.string :clinical_details
      t.string :pcv
      t.string :hba1c
      t.string :hbsag
      t.string :esr
      t.string :fbs
      t.string :rbs
      t.string :serology
      t.string :appearance
      t.string :blood
      t.string :ph
      t.string :colour
      t.string :sg
      t.text :others
      t.text :comment
      t.belongs_to :consultant, index: true

      t.timestamps null: false
    end
    add_foreign_key :lab_records, :patients
    add_foreign_key :lab_records, :consultants
  end
end
