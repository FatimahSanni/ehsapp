class PharmacyInvoice < ActiveRecord::Base
  belongs_to :patient
  belongs_to :consultant
  has_many :pharmacy_items
  accepts_nested_attributes_for :pharmacy_items, reject_if: :all_blank, allow_destroy: true
end
