class AddMrnToPatients < ActiveRecord::Migration
  def change
  	add_column :patients, :mrn, :string
  end
end
