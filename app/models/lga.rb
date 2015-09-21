class Lga < ActiveRecord::Base
  belongs_to :state
  has_many :patients
end
