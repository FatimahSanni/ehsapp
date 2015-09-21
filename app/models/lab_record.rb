class LabRecord < ActiveRecord::Base
  belongs_to :patient
  belongs_to :consultant
end
