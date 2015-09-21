class RemoveConsultantIdFromOpticalPrescriptions < ActiveRecord::Migration
  def change
    remove_column :optical_prescriptions, :consultant_id, :integer
  end
end
