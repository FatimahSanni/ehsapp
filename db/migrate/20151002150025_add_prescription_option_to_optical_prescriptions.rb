class AddPrescriptionOptionToOpticalPrescriptions < ActiveRecord::Migration
  def change
    add_reference :optical_prescriptions, :prescription_option, index: true
    add_foreign_key :optical_prescriptions, :prescription_options
  end
end
