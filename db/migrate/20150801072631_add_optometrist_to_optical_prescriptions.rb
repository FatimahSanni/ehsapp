class AddOptometristToOpticalPrescriptions < ActiveRecord::Migration
  def change
    add_reference :optical_prescriptions, :optometrist, index: true
    add_foreign_key :optical_prescriptions, :optometrists
  end
end
