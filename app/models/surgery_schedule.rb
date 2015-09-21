class SurgerySchedule < ActiveRecord::Base
  belongs_to :patient
  belongs_to :consultant
  belongs_to :anaesthesia
  belongs_to :service
end
