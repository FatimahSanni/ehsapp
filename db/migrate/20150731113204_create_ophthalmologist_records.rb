class CreateOphthalmologistRecords < ActiveRecord::Migration
  def change
    create_table :ophthalmologist_records do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :consultant, index: true
      t.string :prediagnosis
      t.string :re
      t.string :le
      t.string :s_re
      t.string :s_le
      t.string :c_re
      t.string :c_le
      t.string :refraction
      t.text :complaint
      t.string :duration
      t.text :history
      t.string :previous_problems
      t.text :general_medical_history
      t.string :medications
      t.text :family_history
      t.string :social_history
      t.string :bp
      t.string :urine
      t.boolean :diabetes
      t.boolean :hypertension
      t.boolean :cardiac
      t.boolean :asthma
      t.string :others
      t.string :allergy
      t.boolean :smoking
      t.string :facial_re
      t.string :facial_le
      t.string :pupil_re
      t.string :pupil_le
      t.string :ocular_re
      t.string :ocular_le
      t.string :investigations
      t.text :diagnosis
      t.text :treatment

      t.timestamps null: false
    end
    add_foreign_key :ophthalmologist_records, :patients
    add_foreign_key :ophthalmologist_records, :consultants
  end
end
