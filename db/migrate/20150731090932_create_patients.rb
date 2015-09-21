class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :surname
      t.date :dob
      t.string :gender
      t.string :address
      t.string :phone
      t.string :email
      t.belongs_to :occupation, index: true
      t.belongs_to :nationality, index: true
      t.belongs_to :religion, index: true
      t.string :next_of_kin
      t.string :next_of_kin_phone
      t.string :next_of_kin_address
      t.boolean :referred
      t.belongs_to :referrer, index: true

      t.timestamps null: false
    end
    add_foreign_key :patients, :occupations
    add_foreign_key :patients, :nationalities
    add_foreign_key :patients, :religions
    add_foreign_key :patients, :referrers
  end
end
