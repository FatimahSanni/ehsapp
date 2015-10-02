class OpticalPrescription < ActiveRecord::Base
  belongs_to :patient
  belongs_to :optometrist
  belongs_to :prescription_option
end
