class PharmacyItem < ActiveRecord::Base
  belongs_to :pharmacy_invoice
end
