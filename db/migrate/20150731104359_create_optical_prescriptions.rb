class CreateOpticalPrescriptions < ActiveRecord::Migration
  def change
    create_table :optical_prescriptions do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :consultant, index: true
      t.string :sph_re
      t.string :sph_le
      t.string :cyl_re
      t.string :cyl_le
      t.string :axis_re
      t.string :axis_le
      t.string :prism_re
      t.string :prism_le
      t.string :add_re
      t.string :add_le
      t.string :lens_type

      t.timestamps null: false
    end
    add_foreign_key :optical_prescriptions, :patients
    add_foreign_key :optical_prescriptions, :consultants
  end
end
