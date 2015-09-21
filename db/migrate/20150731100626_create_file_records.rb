class CreateFileRecords < ActiveRecord::Migration
  def change
    create_table :file_records do |t|
      t.belongs_to :patient, index: true
      t.string :borrower
      t.text :reason

      t.timestamps null: false
    end
    add_foreign_key :file_records, :patients
  end
end
