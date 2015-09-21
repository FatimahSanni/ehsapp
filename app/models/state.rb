class State < ActiveRecord::Base
	has_many :patients
	has_many :lgas, dependent: :destroy
end
