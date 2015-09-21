class Consultant < ActiveRecord::Base
  belongs_to :consultant_category
  belongs_to :clinic
  has_many :lab_records
  has_many :patients
end
