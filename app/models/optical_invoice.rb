class OpticalInvoice < ActiveRecord::Base
  belongs_to :patient
  belongs_to :optometrist
  has_many :optical_items
  accepts_nested_attributes_for :optical_items, reject_if: :all_blank, allow_destroy: true
end
