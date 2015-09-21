class AddConsultantToPatients < ActiveRecord::Migration
  def change
    add_reference :patients, :consultant, index: true
    add_foreign_key :patients, :consultants
  end
end
