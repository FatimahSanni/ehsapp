class OphthalmologistRecord < ActiveRecord::Base
  belongs_to :patient
  belongs_to :consultant
end
