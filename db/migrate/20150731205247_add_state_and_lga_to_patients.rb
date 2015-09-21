class AddStateAndLgaToPatients < ActiveRecord::Migration
  def change
    add_reference :patients, :state, index: true
    add_foreign_key :patients, :states
    add_reference :patients, :lga, index: true
    add_foreign_key :patients, :lgas
  end
end
