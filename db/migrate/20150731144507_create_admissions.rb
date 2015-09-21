class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.belongs_to :patient, index: true
      t.date :date
      t.belongs_to :service, index: true
      t.belongs_to :room_master, index: true
      t.belongs_to :anaesthesia, index: true
      t.string :eye
      t.belongs_to :lens_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :admissions, :patients
    add_foreign_key :admissions, :services
    add_foreign_key :admissions, :room_masters
    add_foreign_key :admissions, :anaesthesia
    add_foreign_key :admissions, :lens_types
  end
end
