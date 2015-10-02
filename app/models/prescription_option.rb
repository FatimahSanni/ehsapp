class PrescriptionOption < ActiveRecord::Base
	has_many :optical_prescriptions
end
