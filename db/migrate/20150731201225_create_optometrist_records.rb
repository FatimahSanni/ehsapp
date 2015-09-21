class CreateOptometristRecords < ActiveRecord::Migration
  def change
    create_table :optometrist_records do |t|
      t.belongs_to :patient, index: true
      t.string :optometrist
      t.belongs_to :consultant, index: true
      t.string :va_re
      t.string :va_le
      t.string :sc_re
      t.string :sc_le
      t.string :cc_re
      t.string :cc_le
      t.text :diagnosis

      t.timestamps null: false
    end
    add_foreign_key :optometrist_records, :patients
    add_foreign_key :optometrist_records, :consultants
  end
end
