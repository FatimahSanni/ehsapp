class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :time_slot
  belongs_to :consultant
end
