class CreateDischarges < ActiveRecord::Migration
  def change
    create_table :discharges do |t|
      t.belongs_to :patient, index: true
      t.text :note

      t.timestamps null: false
    end
    add_foreign_key :discharges, :patients
  end
end
