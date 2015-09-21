class AddAdmissionToDischarge < ActiveRecord::Migration
  def change
    add_reference :discharges, :admission, index: true
    add_foreign_key :discharges, :admissions
  end
end
