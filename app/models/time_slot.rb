class TimeSlot < ActiveRecord::Base
	has_one :appointment
end
