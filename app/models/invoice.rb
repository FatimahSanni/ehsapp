class Invoice < ActiveRecord::Base
  belongs_to :patient
  belongs_to :consultant
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank
end
