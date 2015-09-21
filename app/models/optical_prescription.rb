class OpticalPrescription < ActiveRecord::Base
  belongs_to :patient
  belongs_to :optometrist
end
