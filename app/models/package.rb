class Package < ActiveRecord::Base
	has_many :patients
end
