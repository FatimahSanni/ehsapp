class AddPackageToPatients < ActiveRecord::Migration
  def change
    add_reference :patients, :package, index: true
    add_foreign_key :patients, :packages
  end
end
