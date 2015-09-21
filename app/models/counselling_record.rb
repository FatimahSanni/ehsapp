class CounsellingRecord < ActiveRecord::Base
  belongs_to :counsellor
  belongs_to :patient
  belongs_to :consultant
  belongs_to :service
end
